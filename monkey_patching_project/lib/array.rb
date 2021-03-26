# Monkey-Patch Ruby's existing Array class to add your own custom methods
# require 'byebug'

class Array
  def average
    return nil if self.length == 0
    self.sum / (self.length * 1.0)
  end

  def median 
    return nil if self.length == 0 
    case self.length % 2
    when 1
      sorted = self.sort
      middle_index = sorted.length / 2
      sorted[middle_index]
    when 0
      sorted = self.sort
      middle_index = sorted.length / 2
      sum = sorted[middle_index] + sorted[middle_index - 1]
      sum / (2.0)
    end
  end

  def counts
    count = Hash.new(0)
    self.each { |ele| count[ele] += 1 }
    count
  end

  def my_count(char)
    num = 0
    self.each do |ele|
      if ele == char
        num += 1
      end
    end
    
    num
  end
end