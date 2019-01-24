$:.unshift File.expand_path('../../views', __FILE__)
require 'views'

require 'pry'
require 'board'
require 'player'
class Game

    # Iniatiation de la méthode pour demander le nom du joueur 1 & le nom du joueur 2 => 2 instances créer
    # Creation des joueurs via 2 instances générer par Player -> Condition si le joueur 1 existe creation du joueur 2 (if)
  def initialize

    @views = Views.new
    @round_number = 1

  end 

  def perform 
    puts "LE MORPION"

    params = @views.start_game    
    @player1 = Player.new(params[:player1],"X") # Create the player 1 & assign the value
    @player2 = Player.new(params[:player2],"O") # Create the player 2 & assign the value
    @board = Board.new

    while true

      case @round_number # Déroulé des tour
      when 1
      	############################################################# X
        
         puts "Tour #{@round_number} :  #{@player1.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round
         result = @board.check(choice,"X") 

         if result == true then @round_number = @round_number + 1
         else 
         choice = @views.round
         result = @board.check(choice,"X")
         end 


      when 2
         
      	 puts "Tour #{@round_number} :  #{@player2.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round
         result = @board.check(choice,"O")     
         if result == true then 
         @round_number = @round_number + 1
         else 
         end         
		# Call boardcase avec le couple de valeur (A3,X) # On récupére seulement A3 car X est ecrit en string
      when 3
     	 puts "Tour #{@round_number} :  #{@player1.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round
         result = @board.check(choice,"X")         
         if result == true then @round_number = @round_number + 1
         else 
         end 

	  when 4
	  	 puts "Tour #{@round_number} :  #{@player2.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round
         result = @board.check(choice,"O")         
         if result == true then @round_number = @round_number + 1
         else 

         end 

	  when 5
	  	 puts "Tour #{@round_number} :  #{@player1.instance_variable_get("@player_name")} entrez votre case" 
        choice = @views.round
        result = @board.check(choice,"X")         
         if result == true then 
          win = @board.check_win
          @round_number = @round_number + 1
         else 
         end 
         if win == true then break else end 

	  when 6
	  	 puts "Tour #{@round_number} :  #{@player2.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round
         result = @board.check(choice,"O")     

         if result == true then @round_number = @round_number + 1
         else 
         end 
        if win == true then break else end 

	  when 7
         puts "Tour #{@round_number} :  #{@player1.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round
         result = @board.check(choice,"X")

         if result == true then @round_number = @round_number + 1
         else 
         end 
         if win == true then break else end 

	  when 8
	     puts "Tour #{@round_number} :  #{@player2.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round
         result = @board.check(choice,"O")         
         if result == true then @round_number = @round_number + 1
         else 
         end 
         if win == true then break else end 

	  when 9
	     puts "Tour #{@round_number} :  #{@player1.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round
         result = @board.check(choice,"X")         
         if result == true then @round_number = @round_number + 1
         else 
         end 
         if win == true then break else end 
      else
        puts "Fin du jeu, il n'y a pas de gagnant" 
      	break
      end
    end
  end
end