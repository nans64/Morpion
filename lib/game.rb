require 'views'
require 'board'
require 'player'
class Game

    # Iniatiation de la méthode pour demander le nom du joueur 1 & le nom du joueur 2 => 2 instances créer
    # Creation des joueurs via 2 instances générer par Player -> Condition si le joueur 1 existe creation du joueur 2 (if)
  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @board = Board.new
  end 

  def perform 
    puts "LE MORPION"

    params = @view.start_game    
    @player1 = Player.new(params[:player1],"X") # Create the player 1 & assign the value
    @player2 = Player.new(params[:player2],"O") # Create the player 2 & assign the value

    while true

      round_number = 1

      case round_number # Déroulé des tour
      when 1
      	############################################################# X
        # puts "Tour #{round_number} :  Joueur 1 entrez votre case" 
		# Call boardcase avec le couple de valeur (A3,X) # On récupére seulement A3 car X est ecrit en string
		# Valeur tour + 1 # round_number = round_number + 1
		#############################################################

      when 2
      	############################################################## O
        # puts "Tour #{round_number} :  Joueur 2 entrez votre case" 
		# Call boardcase avec le couple de valeur (A3,X) # On récupére seulement A3 car X est ecrit en string
		# Valeur tour + 1 # round_number = round_number + 1
		#############################################################
      when 3
      	############################################################# X
        # puts "Tour #{round_number} :  Joueur 1 entrez votre case" 
		# Call boardcase avec le couple de valeur (A3,X) # On récupére seulement A3 car X est ecrit en string
		# Valeur tour + 1 # round_number = round_number + 1
		#############################################################
	  when 4
	  	############################################################# O
        # puts "Tour #{round_number} :  Joueur 2 entrez votre case" 
		# Call boardcase avec le couple de valeur (A3,X) # On récupére seulement A3 car X est ecrit en string
		# Valeur tour + 1 # round_number = round_number + 1
		#############################################################
	  when 5
	  	############################################################# X
        # puts "Tour #{round_number} :  Joueur 1 entrez votre case" 
		# Call boardcase avec le couple de valeur (A3,X) # On récupére seulement A3 car X est ecrit en string
		# Verifier si le joueur "X" dispose d'une combinaison gagnante
		# Valeur tour + 1 # round_number = round_number + 1
		#############################################################
	  when 6
	  	############################################################# O
        # puts "Tour #{round_number} :  Joueur 2 entrez votre case" 
        # Call boardcase avec le couple de valeur (A3,X) # On récupére seulement A3 car X est ecrit en string # @Board.modify
		# Verifier si le joueur "O" dispose d'une combinaison gagnante # @Board.read
		# Valeur tour + 1 # round_number = round_number + 1
		#############################################################
	  when 7
	    ############################################################# X
        # puts "Tour #{round_number} :  Joueur 1 entrez votre case" # View.round
        # Call boardcase avec le couple de valeur (A3,X) # On récupére seulement A3 car X est ecrit en string
		# Verifier si le joueur 1 dispose d'une combinaison gagnante -> A partir du 6 eme tour 
		# Valeur tour + 1 # round_number = round_number + 1
		############################################################# 	
	  when 8
	    ############################################################# O
        # puts "Tour #{round_number} :  Joueur 2 entrez votre case" 
        # Call boardcase avec le couple de valeur (A3,X) # On récupére seulement A3 car X est ecrit en string
		# Verifier si le joueur 1 dispose d'une combinaison gagnante -> A partir du 6 eme tour 
		# Valeur tour + 1 # round_number = round_number + 1
		#############################################################  	
	  when 9
	    ############################################################# X
        # puts "Tour #{round_number} :  Joueur 1 entrez votre case" 
        # Call boardcase avec le couple de valeur (A3,X) # On récupére seulement A3 car X est ecrit en string
		# Verifier si le joueur 1 dispose d'une combinaison gagnante -> A partir du 6 eme tour 
		# Valeur tour + 1 # round_number = round_number + 1
		#############################################################	
	  when 10	
	    ############################################################# FIN DU GAME
        # puts FIN DU GAME MATCH NUL
		# BREAK
		# 
		#############################################################	
      else
        puts "Ce choix n'existe pas, merci de ressayer" #si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)
      end
    end
  end

end