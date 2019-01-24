require 'boardcase'
class Board

# Créer une méthode pour créer 9 instances de Boardcase de A1 à C3
  def initialize

    @A1 = Boardcase.new("A1", "A1")
    @A2 = Boardcase.new("A2", "A2")
    @A3 = Boardcase.new("A3", "A3")
    @B1 = Boardcase.new("B1", "B1")
    @B2 = Boardcase.new("B2", "B2")
    @B3 = Boardcase.new("B3", "B3")
    @C1 = Boardcase.new("C1", "C1")
    @C2 = Boardcase.new("C2", "C2")
    @C3 = Boardcase.new("C3", "C3")
    @my_array = [@A1,@A2,@A3,@B1,@B2,@B3,@C1,@C2,@C3]
    @views = Views.new
    @checking = []
    @value = 0

  end

def check(choice, valeur)
while true
  case @checking.include?(choice)
  when true
  puts "La case a déjà été coché veuillez choisir une autre case"
  return false
  else 
  puts "La case a bien été ajouté au morpion"
  @checking.push(choice)
#  puts @checking
  modify(choice, valeur)
  return true    
  end
end
end


def modify(numero, valeur)

  puts "Je suis cette valeur contenu"
      i = 0
   
    while true

      if @my_array[i].contenu == numero
      then
      @my_array[i].contenu = valeur
#      puts "J'ai réussi à ajouter une valeur"
#      puts @my_array[i].contenu      
      return true
      else
         i = i + 1
      end

    end

end

def check_win 


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
    else return not_yet

    end


end

  def show_board
#binding.pry
    puts "  #{@A1.contenu}  |  #{@A2.contenu}  |  #{@A3.contenu}  "
    puts "-----------------"
    puts "  #{@B1.contenu}  |  #{@B2.contenu}  |  #{@B3.contenu}  "
    puts "-----------------"
    puts "  #{@C1.contenu}  |  #{@C2.contenu}  |  #{@C3.contenu}  "
  end

end