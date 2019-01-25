require 'boardcase'
class Board


  def initialize
    # Create 9 instances for the board
    @A1 = Boardcase.new("A1", "A1")
    @A2 = Boardcase.new("A2", "A2")
    @A3 = Boardcase.new("A3", "A3")
    @B1 = Boardcase.new("B1", "B1")
    @B2 = Boardcase.new("B2", "B2")
    @B3 = Boardcase.new("B3", "B3")
    @C1 = Boardcase.new("C1", "C1")
    @C2 = Boardcase.new("C2", "C2")
    @C3 = Boardcase.new("C3", "C3")
    @my_array = [@A1,@A2,@A3,@B1,@B2,@B3,@C1,@C2,@C3] # Create an array from the 9 instances
    @views = Views.new # Initiate the view
    @checking = [] # Create an array for checking

  end

def check(choice, valeur) # Check if the value gave by the player is already registered
while true
  case @checking.include?(choice) # Check if the value exist into the array Checking
  when true # If true then it means that the case has already been used
  puts "La case a déjà été coché veuillez choisir une autre case"
  return false
  else 
  puts "La case a bien été ajouté au morpion"
  @checking.push(choice) # Push the new value into the array
  modify(choice, valeur) # Push the new value into the instance
  return true    
  end
end
end


def modify(numero, valeur)
      i = 0
   
    while true # Loop that will modify the right instance

      if @my_array[i].contenu == numero # Select the right instance
      then
      @my_array[i].contenu = valeur # Modify the value If player 1 is playing then the case A3 will be (A3,"X")   
      return true
      else
         i = i + 1
      end

    end

end

def check_win # Check all the possible combination


    if @A1.contenu == @A2.contenu && @A1.contenu == @A3.contenu && @A2.contenu == @A3.contenu then
     
    return true
    elsif @B1.contenu == @B2.contenu && @B1.contenu == @B3.contenu && @B2.contenu == @B3.contenu
     
    return true    
        elsif @C1.contenu == @C2.contenu && @C1.contenu == @C3.contenu && @C2.contenu == @C3.contenu
     
    return true    
        elsif @A1.contenu == @B1.contenu && @B1.contenu == @C1.contenu && @C1.contenu == @A1.contenu
     
    return true    
        elsif @A2.contenu == @B2.contenu && @B2.contenu == @C2.contenu && @C2.contenu == @A2.contenu
     
    return true    
        elsif @A3.contenu == @B3.contenu && @B3.contenu == @C3.contenu && @C3.contenu == @A3.contenu
     
    return true    
        elsif @A1.contenu == @B2.contenu && @B2.contenu == @C3.contenu && @A1.contenu == @C3.contenu
     
    return true    
        elsif @A3.contenu == @B2.contenu && @B2.contenu == @C1.contenu && @A3.contenu == @C1.contenu
     
    return true    
    else return false

    end


end

  def show_board # Print the board

    puts "  #{@A1.contenu}  |  #{@A2.contenu}  |  #{@A3.contenu}  "
    puts "-----------------"
    puts "  #{@B1.contenu}  |  #{@B2.contenu}  |  #{@B3.contenu}  "
    puts "-----------------"
    puts "  #{@C1.contenu}  |  #{@C2.contenu}  |  #{@C3.contenu}  "
  end

  def start_again

    @A1.contenu = "A1"
    @A2.contenu = "A2"
    @A3.contenu = "A3"
    @B1.contenu = "B1"
    @B2.contenu = "B2"
    @B3.contenu = "B3"
    @C1.contenu = "C1"
    @C2.contenu = "C2"
    @C3.contenu = "C3"
    @checking = []   

  end
end