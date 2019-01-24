class Player

# Créer une méthode pour demander le nom du joueur 1 & le nom du joueur 2
# Creation des joueurs via 2 instances générer par Player -> Condition si le joueur 1 existe creation du joueur 2 (if)
	attr_accessor :player, :value
	def initialize(player,value)
		@player_name = player
		@value = value
	end
end