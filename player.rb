class Player 

  @@number_of_players = 0
  attr_accessor :score, :short, :full
  def initialize
    @@number_of_players += 1
    self.short = "P#{@@number_of_players}"
    self.full = "Player #{@@number_of_players}"
    self.score = 3
  end

  def lose
    self.score -= 1
  end

  def final_score
    "#{score}/3"
  end
  
end