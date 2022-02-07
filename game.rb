require './question'
require './player'

class Game 

def play(players)
  question = Question.new
  puts "#{players[0].full}: #{question.ques}"
  print ">"
  answer = $stdin.gets.chomp

if answer.to_i == question.num1 + question.num2
  puts "#{players[0].full}: YES! You are correct."
      puts "#{players[0].short}: #{players[0].final_score} vs #{players[1].short}: #{players[1].final_score}"
    else
      players[0].lose
      puts "#{players[0].full}: Seriously? No!"
      puts "#{players[0].short}: #{players[0].final_score} vs #{players[1].short}: #{players[1].final_score}"
    end  
      puts "----- NEW TURN -----"
  
    if players[0].score == 0
      puts "#{players[1].full} wins with a score of #{players[1].final_score}"
      puts "----- GAME OVER -----"
    elsif players[1].score == 0
      puts "#{players[0].full} wins with a score of #{players[0].final_score}"
      puts "----- GAME OVER -----"
    else
      players.reverse!
      play(players)
    end

  end
end