class Tournament
  
end

class Player
  attr_reader :name

  def initialize(params)
    @name = params[:name]
  end
  
end

class Match
  attr_accessor :player_1, :player_2, :best_of, :completed_games, :winner

  def initialize(params, best_of)
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    @best_of = best_of
    @completed_games = []
    @winner = ""
    new_game
  end

  def new_game
    # Creates a new game instance for each player
    player_1_game = Game.new({player: player_1})
    player_2_game = Game.new({player: player_2})
    puts "New game has begun!"

    # Regular (small hatchet) throws for first 5
    while player_1_game.throw_count < 5 && player_2_game.throw_count < 5
      puts "What did #{player_1.name} score?"
      player_1_game.throw({points: gets.chomp.to_i})
      puts "What did #{player_2.name} score?"
      player_2_game.throw({points: gets.chomp.to_i})
    end

    # Check for tiebreaker after 3 throws. If true, we go to big axe
    if player_1_game.score == player_2_game.score
      puts "BIG AXE"
      while player_1_game.score == player_2_game.score
        puts "What did #{player_1.name} score?"
        player_1_game.throw({points: gets.chomp.to_i, big_axe: true})
        puts "What did #{player_2.name} score?"
        player_2_game.throw({points: gets.chomp.to_i, big_axe: true})
      end
    end

    puts "Final scores:"
    puts "#{player_1.name} has #{player_1_game.score} points"
    puts "#{player_2.name} has #{player_2_game.score} points"

    # Declare winner
    if player_1_game.score > player_2_game.score # Player 1 wins
      puts "#{player_1.name} wins the game!"
      game_win(player_1)
    elsif player_2_game.score > player_1_game.score # Player 2 wins
      puts "#{player_2.name} wins the game!"
      game_win(player_2)
    end
  end

  def game_win(player) # takes in either player_1 or player_2 as parameter. Keeps track of who wins what games
    completed_games << player
    win_condition # checks to see if either player wins the match
  end

  def win_condition  
    if completed_games.count(player_1) == best_of/2 + 1 # player 1 wins
      puts "#{player_1.name} wins the match"
      @winner = player_1 
    elsif completed_games.count(player_2) == best_of/2 + 1 # player 2 wins
      puts "#{player_2.name} wins the match"
      @winner = player_2
    else
      new_game # If neither player has won yet, automatically starts a new game
    end
  end
  
end

class Game
  attr_accessor :throw_count, :score, :throws, :player_name

  def initialize(params)
    @throw_count = 0
    @score = 0
    @throws = []
    @player_name = params[:player]
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

alex = Player.new({name: "Alex"})
doug = Player.new({name: "Doug"})

match = Match.new({player_1: alex, player_2: doug}, 3)
p match.winner
