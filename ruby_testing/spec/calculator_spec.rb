#spec/calculator_spec.rb
require './lib/calculator'
describe Calculator do
  describe "#add" do
    it "returns the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end

    it "returns the sum of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.add(2, 5, 7)).to eql(14)
    end
  end

  describe "#multiply" do
    it "returns the product of two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(5, 2)).to eql(10)
    end

    it "returns the sum of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(2, 5, 7)).to eql(70)
    end
  end

  describe "#subtract" do
    it "returns two numbers subtracted" do
      calculator = Calculator.new
      expect(calculator.subtract(5, 2)).to eql(3)
    end

    it "returns two numbers subtracted" do
      calculator = Calculator.new
      expect(calculator.subtract(97, 17)).to eql(80)
    end
  end

  describe "#divide" do
    it "returns first num divided by second num" do
      calculator = Calculator.new
      expect(calculator.divide(66, 3)).to eql(22)
    end

    it "returns first num divided by second num" do
      calculator = Calculator.new
      expect(calculator.divide(100, 4)).to eql(25)
    end
  end
end
