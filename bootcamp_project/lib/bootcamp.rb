class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new { |hash, key| hash[key] = [] }
  end

  def name 
    @name
  end

  def slogan
    @slogan
  end

  def teachers
    @teachers
  end

  def students
    @students
  end

  def hire(new_teacher)
    @teachers << new_teacher
  end

  def enroll(new_student)
    if @students.length < @student_capacity
      @students << new_student
      return true
    else 
      return false
    end
  end

  def enrolled?(student)
    @students.include?(student)
  end

  def add_grade(student, grade)
    if enrolled?(student)
      @grades[student] << grade
      return true
    else
      return false
    end
  end

end
