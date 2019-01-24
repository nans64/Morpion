class Board


# Créer une méthode pour créer 9 instances de Boardcase de A1 à C3
  def initialize
    @A1 = Boardcase.new
  end #ainsi, un "Router.new" lancé par app.rb va créer automatique une instance "@controller"

# A1 = Boardcase.New."Methode" => (A1,nil)
# A2 = Boardcase.New."Methode"
# A3 = Boardcase.New."Methode"
# B1 = Boardcase.New."Methode"
# B2 = Boardcase.New."Methode"
# B3 = Boardcase.New."Methode"
# C1 = Boardcase.New."Methode"
# C2 = Boardcase.New."Methode"
# C3 = Boardcase.New."Methode"

  def modify
  	# Modifier le contenu de notre instance 
  	# Exemple : C1 -> Modifier l'instance C1 et attribuer la valeur du joueur "X" ou "O"
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