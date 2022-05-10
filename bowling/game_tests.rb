require 'rspec'
require_relative 'game.rb'

RSpec.describe Bowling do
  describe '#change' do
    it 'should return the sum of the pins when given all integers' do
      game = Bowling.new([1,5,  4,4,  8,0,  5,3,  0,0,  4,5,  2,3,  8,1,  7,1,  1,1])
      expect(game.score).to eq(63)
    end
    it 'should return the sum of the pins when 0 is replaced with "-"' do
      game = Bowling.new([1,5,  4,4,  8,'-',  5,3,  '-','-',  4,5,  2,3,  8,1,  7,1,  1,1])
      expect(game.score).to eq(63)
    end
    it 'should score / as 10 + the next throw' do
      game = Bowling.new([1,5,  4,4,  8,'/',  5,3,  '-','-',  4,5,  2,3,  8,'/',  7,1,  1,1])
      expect(game.score).to eq(78)
    end
  end
end