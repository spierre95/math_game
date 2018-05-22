require './players'

class TurnManager
   def initialize(players)
    @turn = players.dup.shuffle
  end

  def current_player
    @turn.first
  end

  def next_turn
   @turn.rotate!
  end

end




