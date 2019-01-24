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

  puts @checking
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
      puts "J'ai réussi à ajouter une valeur"
      puts @my_array[i].contenu      
      return true
      else
         i = i + 1
      end

    end

end

def check_win 
    if @A1[1] == @A2[1] && @A1[1] == @A3[1] && @A2[1] == @A3[1] then
    return win
    elsif @B1[1] == @B2[1] && @B1[1] == @B3[1] && @B2[1] == @B3[1]
      return win

    elsif @B1[1] == @B2[1] && @B1[1] == @B3[1] && @B2[1] == @B3[1]
      return win

    elsif @B1[1] == @B2[1] && @B1[1] == @B3[1] && @B2[1] == @B3[1]
      return win  

    elsif @B1[1] == @B2[1] && @B1[1] == @B3[1] && @B2[1] == @B3[1]
      return win  

    elsif @B1[1] == @B2[1] && @B1[1] == @B3[1] && @B2[1] == @B3[1]
      return win  

    elsif @B1[1] == @B2[1] && @B1[1] == @B3[1] && @B2[1] == @B3[1]
      return win  

    elsif @B1[1] == @B2[1] && @B1[1] == @B3[1] && @B2[1] == @B3[1]
      return win             

    else return not_yet

    end


  end

  def read

  	# Lecture de l'ensemble des valeurs
  	# Renvoyer l'ensemble des couples de valeurs (A1,A2 = X) (C1,C2 = O)
  end

  def end_of_the_game

  	# Comparaison des valeurs si vainqueur ou non
  	# Si vainqueur on renvoit une variable X ou O est vainqueur
  	# Renvoyer au game FIN DE PARTIE -> On renvoit X ->>> GAME Compare cette valeur X pour la comparer à l'instance Player (Nans,X) 
  	# SI X = X alors Nans est gagnant
  	# Return view qui arrete la boucle du jeu


  end

end