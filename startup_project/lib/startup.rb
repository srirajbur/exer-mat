require "employee"

class Startup
  attr_reader :name, :funding, :salaries, :employees

  def initialize(name, funding, salaries)
    @name = name 
    @funding = funding
    @salaries = salaries
    @employees = []
  end

  def valid_title?(title)
    @salaries.has_key?(title)
  end

  def >(other_startup)
    self.funding > other_startup.funding
  end

  def hire(employee_name, title)
    if self.valid_title?(title)
      @employees << Employee.new(employee_name, title)
    else
      raise "title is invalid"
    end
  end

  def size
    @employees.length
  end

  def pay_employee(employee)
    salary = @salaries[employee.title]
    if @funding > salary
      employee.pay(salary)
      @funding -= salary
    else
      raise "Not enough funds to pay employee"
    end
  end

  def payday
    @employees.each { |employee| self.pay_employee(employee) }
  end

  def average_salary
    total = 0
    @employees.each do |employee|
      salary = @salaries[employee.title]
      total += salary
    end
    total / @employees.length
  end

  def close 
    @funding = 0
    @employees = []
  end

  def acquire(other_startup)
    @funding += other_startup.funding
    other_startup.salaries.each do |title, amount|
      if !@salaries.has_key?(title)
        @salaries[title] = amount
      end
    end
    @employees += other_startup.employees
    other_startup.close
  end

end
