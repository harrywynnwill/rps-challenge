require_relative 'computer'
require_relative 'player'

class Game

attr_reader :player
attr_reader :winner
attr_reader :computer
attr_reader :player_choice
  def self.create(player)
    @game = Game.new(player)
  end
  def self.game_in_play
    @game
  end

  def initialize(player, computer_class = Computer)
    @player = player
    @computer = computer_class.new
    @winner = nil
    @player_choice
  end

  def choice(choice)
    @player_choice = choice
    rock(computer.computer_choice) if @player_choice == 'rock'
    scissors(computer.computer_choice) if @player_choice == 'scissors'
    paper(computer.computer_choice) if @player_choice == 'paper'
  end



  private

  def rock(choice)
    player_wins if choice == "scissors"
    computer_wins if choice == "paper"
    tie if choice == "rock"
  end

  def scissors(choice)
    player_wins if choice == "paper"
    computer_wins if choice == "rock"
    tie if choice == "scissors"
  end

  def paper (choice)
    player_wins if choice == "rock"
    computer_wins if choice == "scissors"
    tie if choice == "paper"
  end
  def player_wins
     @winner = "#{@player.name} wins!!"
     score_added
  end
  def computer_wins
    @winner = "The Computer wins!"
    score_minus
  end

  def tie
    @winner = "game is a tie"
  end
  def score_added
    @game = player.add_score
  end
  def score_minus
    @game = player.minus_score
  end

end