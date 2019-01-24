require 'boardcase'
class Board

# Créer une méthode pour créer 9 instances de Boardcase de A1 à C3
  def initialize

    @A1 = Boardcase.new("A1", nil)
    @A2 = Boardcase.new("A2", nil)
    @A3 = Boardcase.new("A3", nil)
    @B1 = Boardcase.new("B1", nil)
    @B2 = Boardcase.new("B2", nil)
    @B3 = Boardcase.new("B3", nil)
    @C1 = Boardcase.new("C1", nil)
    @C2 = Boardcase.new("C2", nil)
    @C3 = Boardcase.new("C3", nil)

  end

  def check(choice)
    
    # pour verifier


   binding.pry
  end

  def modify
  	# Modifier le contenu de notre instance 
  	# Exemple : C1 -> Modifier l'instance C1 et attribuer la valeur du joueur "X" ou "O" si instance = nil then modify else return views
  	# A1 = (A1,X)
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