class Player
  attr_accessor :name

  def initialize(params)
    @name = params[:name]
  end
end

class Throw
  attr_accessor :value

  def initialize(value)
    @value = value
  end

end

class Game
  attr_accessor :scores, :player

  def initialize(player)
    @player = player.name
    @scores = []
  end

  def five
    scores << Throw.new(5)
    end_game
  end

  def three
    scores << Throw.new(3)
    end_game
  end

  def one
    scores << Throw.new(1)
    end_game
  end

  def drop
    scores << Throw.new(0)
    end_game
  end

  def total_score
    total = 0
    scores.each do |score|
      total += score.value
    end
    return total
  end

  def end_game
    if scores.length == 5
      puts "Game Over!"
      puts "#{player}'s final score is: #{total_score}"
    end
  end
  
end

alex = Player.new({name: "Alex"})
game = Game.new(alex)
game.five
game.five
game.one
game.three
game.drop