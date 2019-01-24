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
         @board.show_board # Display the board
         puts "Tour #{@round_number} :  #{@player1.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round
         result = @board.check(choice,"X") 

         if result == true then @round_number = @round_number + 1
         else 
         choice = @views.round
         result = @board.check(choice,"X")
         end 


      when 2
         @board.show_board # Display the board         
      	 puts "Tour #{@round_number} :  #{@player2.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round
         result = @board.check(choice,"O")     
         if result == true then 
         @round_number = @round_number + 1
         else 
         end         
		# Call boardcase avec le couple de valeur (A3,X) # On récupére seulement A3 car X est ecrit en string
      when 3
         @board.show_board # Display the board        
     	 puts "Tour #{@round_number} :  #{@player1.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round
         result = @board.check(choice,"X")         
         if result == true then @round_number = @round_number + 1
         else 
         end 

	  when 4
         @board.show_board # Display the board      
	  	 puts "Tour #{@round_number} :  #{@player2.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round
         result = @board.check(choice,"O")         
         if result == true then @round_number = @round_number + 1
         else 

         end 

	  when 5
         @board.show_board # Display the board      
	  	 puts "Tour #{@round_number} :  #{@player1.instance_variable_get("@player_name")} entrez votre case" 
        choice = @views.round
        result = @board.check(choice,"X")         
         if result == true then 
          win = @board.check_win
          @round_number = @round_number + 1
         else 
         end 
         if win == true then
          @views.end_of_the_game 
          puts "#{@player1.instance_variable_get("@player_name")} a gagné la partie"
          break 
          else end 
	  when 6
         @board.show_board # Display the board      
	  	 puts "Tour #{@round_number} :  #{@player2.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round
         result = @board.check(choice,"O")     

         if result == true then @round_number = @round_number + 1
         else 
         end 
        if win == true then
          @views.end_of_the_game 
          puts "#{@player2.instance_variable_get("@player_name")} a gagné la partie"
          break 
          else end 
	  when 7
         @board.show_board # Display the board      
         puts "Tour #{@round_number} :  #{@player1.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round
         result = @board.check(choice,"X")

         if result == true then @round_number = @round_number + 1
         else 
         end 
         if win == true then
          @views.end_of_the_game 
          puts "#{@player1.instance_variable_get("@player_name")} a gagné la partie"
          break 
          else end 
	  when 8
         @board.show_board # Display the board      
	       puts "Tour #{@round_number} :  #{@player2.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round
         result = @board.check(choice,"O")         
         if result == true then @round_number = @round_number + 1
         else 
         end 
         if win == true then 
          @views.end_of_the_game 
          puts "#{@player2.instance_variable_get("@player_name")} a gagné la partie"
          break 
          else end 
	  when 9
         @board.show_board # Display the board      
	       puts "Tour #{@round_number} :  #{@player1.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round
         result = @board.check(choice,"X")         
         if result == true then @round_number = @round_number + 1
         else 
         end 

         if win == true then 
          @views.end_of_the_game 
          puts "#{@player1.instance_variable_get("@player_name")} a gagné la partie"
          break 
          else end 
      else
        @views.start_again
      	break
      end
    end
  end
end