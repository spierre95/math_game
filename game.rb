require './turn'
require './players'
require './questions'

class Game

  def initialize

    player1 = Players.new('player1',0)
    player2 = Players.new('player2',0)

    @players = [player1,player2]
    @turn = TurnManager.new(@players)

  end

  def game_over?
   @players.each do |player|
    if player.score == 3
      puts "#{player.name} Won!"
      return
    end
  end
end

def run
  while game_over?
    current_player = @turn.current_player
    puts "#{current_player.name}'s Turn!"
    question = Question.new
    puts "#{question.generate_question}"
    input = gets.chomp.to_i
    if question.check_answer(input)
      current_player.score += 1
    end
    puts "#{current_player.name}  Score: #{current_player.score}/3"
    @turn.next_turn
    sleep 0.5
  end
end
end


