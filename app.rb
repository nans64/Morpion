# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;)
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
$:.unshift File.expand_path("./../lib/app", __FILE__)

require 'boardcase' #plus besoin de préciser le path exact
require 'game' #plus besoin de préciser le path exact
require 'board' #plus besoin de préciser le path exact
require 'player' #plus besoin de préciser le path exact


$:.unshift File.expand_path('./../lib/views', __FILE__)
require 'index'

puts Game.new.perform

=begin 

  def initialize
    @controller = Controller.new
  end #ainsi, un "Router.new" lancé par app.rb va créer automatique une instance "@controller"

  def perform #rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit perform.
    puts "BIENVENUE DANS THE GOSSIP PROJECT"
    while true

      #on affiche le menu
      puts "Tu veux faire quoi BG ?"
      puts "1. Je veux créer un gossip"
      puts "2. Afficher tous les potins"
      puts "4. Je veux quitter l'app"
      params = gets.chomp.to_i #on attend le choix de l'utilisateur

      case params #en fonction du choix
      when 1
      	#############################################################
        # puts "Tour #{nombre_de_tour} :  Joueur 1 entrez votre case" 
		# Verifier si le joueur 1 dispose d'une combinaison gagnante -> A partir du 6 eme tour 
		# Valeur tour + 1
		#############################################################
      when 2
        puts "Tu as choisi d'afficher tous les gossips petit curieux !" 
        Controller.index_gossips
        puts "Fin d'affichage des Gossips :'( reviens bientôt !"
      when 4
        puts "À bientôt !"
        break #ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.
      else
        puts "Ce choix n'existe pas, merci de ressayer" #si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)
      end
    end
  end

  =end