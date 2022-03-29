# class Player
#   attr_accessor :name

#   def initialize(params)
#     @name = params[:name]
#   end
# end

# class Throw
#   attr_accessor :value

#   def initialize(value)
#     @value = value
#   end

# end

# class Game
#   attr_accessor :scores, :player

#   def initialize(player)
#     @player = player.name
#     @scores = []
#   end

#   def five
#     scores << Throw.new(5)
#     end_game
#   end

#   def three
#     scores << Throw.new(3)
#     end_game
#   end

#   def one
#     scores << Throw.new(1)
#     end_game
#   end

#   def drop
#     scores << Throw.new(0)
#     end_game
#   end

#   def total_score
#     total = 0
#     scores.each do |score|
#       total += score.value
#     end
#     return total
#   end

#   def end_game
#     if scores.length == 5
#       puts "Game Over!"
#       puts "#{player}'s final score is: #{total_score}"
#     end
#   end
  
# end

class Tournament
  
end

class Player
  attr_reader :name

  def initialize(params)
    @name = params[:name]
  end
  
end

class Match
  attr_accessor

  def initialize(params)
    player_1 = params[:player_1]
    player_2 = params[:player_2]
  end
  
end

class Game
  attr_accessor :throw_count, :score, :throws, :player_name

  def initialize(params)
    @throw_count = 0
    @score = 0
    @throws = []
    @player_name = params[:player_name]
  end

  def throw(params)
    if throw_count > 4
      params[:big_axe] = true
    end
    throws << Throw.new(params)
    @throw_count += 1
  end

  def score
    score = 0
    throws.each do |throw|
      score += throw.points
    end
    return score
  end
  
end

class Throw
  attr_accessor :points, :clutch_called, :big_axe

  def initialize(params)
    @points = params[:points]
    @clutch_called = params[:clutch_called] || false
    @big_axe = params[:big_axe] || false
  end
  
end

game = Game.new({player_name: "Alex"})
player = Player.new({name: "Alex"})
p player.name