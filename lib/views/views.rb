$:.unshift File.expand_path('../../lib/app', __FILE__)
require 'game'

class Views


      	#############################################################
        # puts "Tour #{nombre_de_tour} :  Joueur 1 entrez votre case" 
        # tour1 = get.chomp
        # C1 -> On envoit la valeur sur le board (C1,X)

		# Verifier si le joueur 1 dispose d'une combinaison gagnante -> A partir du 6 eme tour 
		# Valeur tour + 1
		#############################################################

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
		# FIN DU JEU
		# return break
	end

end