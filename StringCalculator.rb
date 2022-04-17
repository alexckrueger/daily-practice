require 'rspec'

# https://github.com/uplift-delivery/katas/tree/main/string-calculator
# 1. Create a simple String calculator with the below method signature that takes in a string of up to two comma seperated numbers and returns the sum of those numbers.
# Allow the Add method to handle new lines between numbers (instead of commas).

class StringCalculator

  def add(string)
    if string.include?(",") || string.include?("\n")
       numbers = string.split(/[,,\n]/).map{ |number|  number.to_i }
       result = numbers.reduce(:+)
    else
      result = string.to_i
    end
    result
  end

end

RSpec.describe StringCalculator do
  describe '#add' do
    it 'should return 0 when given an empty string' do
      calculator = StringCalculator.new
      result = calculator.add("")
      expect(result).to eq(0)
    end
    
    it 'should return the number as an integer when given a single number' do
      calculator = StringCalculator.new
      result = calculator.add("3")
      expect(result).to eq(3)
    end

    it 'should return the sum as an integer when given two numbers' do
      calculator = StringCalculator.new
      result = calculator.add("5,11")
      expect(result).to eq(16)
    end

    it 'should return the sum as an integer when given 3 numbers' do
      calculator = StringCalculator.new
      result = calculator.add("1,2,3")
      expect(result).to eq(6)
    end

    it 'should return the sum as an integer when given MORE numbers' do
      calculator = StringCalculator.new
      result = calculator.add("1,2,3,9,3,4,2,4,3,3")
      expect(result).to eq(34)
    end

    it 'should handle new lines between numbers (instead of commas)' do
      calculator = StringCalculator.new
      result = calculator.add("5\n11")
      expect(result).to eq(16)
    end

    it 'should handle new lines between numbers in addition to commas' do
      calculator = StringCalculator.new
      result = calculator.add("3,17\n12")
      expect(result).to eq(32)
    end

  end
end