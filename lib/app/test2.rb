require 'pry'

@A1 = ["A1","X"]
@A2 = ["A2","X"]
@A3 = ["A3","O"]
@B1 = ["B1","X"]
@B2 = ["B2","O"]
@B3 = ["B3","O"]
@C1 = ["C1","O"]

if @A1[1] == @A2[1] && @A1[1] == @A3[1] && @A2[1] == @A3[1] then
	puts "YOU WON ! "

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

	

binding.pry