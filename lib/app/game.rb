$:.unshift File.expand_path('../../views', __FILE__)
require 'views'

require 'pry'
require 'board'
require 'player'
class Game

    # Iniatiation de la méthode pour demander le nom du joueur 1 & le nom du joueur 2 => 2 instances créer
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

      case @round_number # Loop that represent the whole game
      when 1
         @board.show_board # Display the board
         puts "Tour #{@round_number} :  #{@player1.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round # Display the view for the choice
         result = @board.check(choice,"X") # Check if the case is free to be assigned

         if result == true then @round_number = @round_number + 1 # If the result return true then go to the next round
         else 
         # Go back to the begining
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

      when 3
         @board.show_board       
     	 puts "Tour #{@round_number} :  #{@player1.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round
         result = @board.check(choice,"X")         
         if result == true then @round_number = @round_number + 1
         else 
         end 

	  when 4
         @board.show_board       
	  	   puts "Tour #{@round_number} :  #{@player2.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round
         result = @board.check(choice,"O")         
         if result == true then @round_number = @round_number + 1
         else 
         end 

	  when 5
         @board.show_board      
	  	  puts "Tour #{@round_number} :  #{@player1.instance_variable_get("@player_name")} entrez votre case" 
        choice = @views.round
        result = @board.check(choice,"X")         
         if result == true then 
          win = @board.check_win
          @round_number = @round_number + 1
         else 
         end 
         # Check if the game is over if true then break the game # We started from the line 5 because we cannot win before one player has 3 cases
         if win == true then 
          @views.end_of_the_game 
          puts "#{@player1.instance_variable_get("@player_name")} a gagné la partie"

          play_again = @views.start_again # Display start again and break the game
          if play_again == true then 
          @round_number = 1 
           @board.start_again
          else break
          end

        else end
	  when 6
         @board.show_board      
	  	 puts "Tour #{@round_number} :  #{@player2.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round
         result = @board.check(choice,"O")     

        if result == true then 
        win = @board.check_win  
        @round_number = @round_number + 1
        else 
        end 
        if win == true then
          @views.end_of_the_game 
          puts "#{@player2.instance_variable_get("@player_name")} a gagné la partie"

        play_again = @views.start_again # Display start again and break the game
        if play_again == true then 
        @round_number = 1 
        @board.start_again
        else break
        end

        else end

	  when 7
         @board.show_board     
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
          play_again = @views.start_again # Display start again and break the game
          if play_again == true then
          @round_number = 1 
          @board.start_again            
          else break
          end
      
          else
          end

	  when 8
         @board.show_board     
	       puts "Tour #{@round_number} :  #{@player2.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round
         result = @board.check(choice,"O")         
         if result == true then 
         win = @board.check_win 
         @round_number = @round_number + 1
         else 
         end

         if win == true then 
          @views.end_of_the_game 
          puts "#{@player2.instance_variable_get("@player_name")} a gagné la partie"

          play_again = @views.start_again # Display start again and break the game
          if play_again == true then
          @round_number = 1 
          @board.start_again
          else break
          end

         else 
         end

	  when 9
         @board.show_board      
	       puts "Tour #{@round_number} :  #{@player1.instance_variable_get("@player_name")} entrez votre case" 
         choice = @views.round
         result = @board.check(choice,"X")         
         if result == true 
         then 
         win = @board.check_win 
         @round_number = @round_number + 1
         else 
         end 

         if win == true then 
          @views.end_of_the_game 
          puts "#{@player1.instance_variable_get("@player_name")} a gagné la partie"
          play_again = @views.start_again # Display start again and break the game
          if play_again == true then
          @round_number = 1 
          @board.start_again            
          else break
          end
        else
        end


        else # > 10 then break
        puts "Personne n'a gagné au cours de cette partie ! MATCH NUL"
        play_again = @views.start_again # Display start again and break the game
        if play_again == true then
        @round_number = 1 
        @board.start_again
        else break
        end
      end
    end
  end
end