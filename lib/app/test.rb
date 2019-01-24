require 'pry'

choice = "A1"
		

#		array = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
        array = ["A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]

         case array.include?(choice)
         when true
         	puts "Vous cochez la case #{choice} "
         	return choice
         else 
         	puts "Choisissez une case valide"
         	
         end