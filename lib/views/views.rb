$:.unshift File.expand_path('../../lib/app', __FILE__)
require 'game'
require 'board'
require 'boardcase'

class Views

	def start_game

	  #on affiche le menu
      puts "Quel est le nom du joueur 1"
      name1 = gets.chomp.to_s      
      puts "Quel est le nom du joueur 2"
      name2 = gets.chomp.to_s

	  return params = {  player1: name1,player2: name2 }


	end

	def round

		while true
			puts "Choisissez une valeur"
			choice = gets.chomp.to_s
			array = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
        
        case array.include?(choice)
         when true
         	puts "Vous cochez la case #{choice} "
         	return choice
         else 
         	puts "CASE INVALIDE !"
        	 	
         end
     	end
    end

  def end_of_the_game
    
puts "#################################################"
puts "#                                               #"
puts "#                                               #"
puts "#                    WINNER                     #"
puts "#                                               #"
puts "#                                               #"
puts "#################################################"

  end	

  def start_again

puts "#################################################"
puts "#                                               #"
puts "#                                               #"
puts "#                 START AGAIN                   #"
puts "#                                               #"
puts "#                                               #"
puts "#################################################"

	end

end