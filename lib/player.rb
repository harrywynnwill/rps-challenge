class Player

  attr_reader :name, :score
  def initialize(name)
    @name = name
    @score = 0
  end

  def self.create(player)
    @player= Player.new(player)
  end

  def self.player
    @player
  end
  def add_score
    @score += 1

  end
  def minus_score
    @score -=1
  end

end