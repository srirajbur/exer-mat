# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def average
    return nil if self.length == 0
    self.sum / (self.length * 1.0)
  end
end