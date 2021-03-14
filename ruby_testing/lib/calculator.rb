class Calculator
  def add(a,*b)
    a + b.sum
  end

  def multiply(a, *b)
    a * b.reduce{|acc, num| acc*num}
  end

  def subtract

  end

  def divide

  end
end