$:.unshift File.expand_path('./../lib/app', __FILE__)
require '##'

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
		puts "Tour #{nombre_de_tour} :  Joueur 1 entrez votre case" # View.round
		value = gets.chomp.to_s     
	    return value = {  x: value }

	end

	def end_of_the_game
		# FIN DU JEU
		# return break
	end

end