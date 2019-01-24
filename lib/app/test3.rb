
    if @A1.contenu == @A2.contenu && @A1.contenu == @A3.contenu && @A2.contenu == @A3.contenu then
    puts "Vous avez gagné"
    return true
    elsif @B1.contenu == @B2.contenu && @B1.contenu == @B3.contenu && @B2.contenu == @B3.contenu
    puts "Vous avez gagné"
    return true    
        elsif @C1.contenu == @C2.contenu && @C1.contenu == @C3.contenu && @C2.contenu == @C3.contenu
    puts "Vous avez gagné"
    return true    
        elsif @A1.contenu == @B1.contenu && @B1.contenu == @C1.contenu && @C1.contenu == @A1.contenu
    puts "Vous avez gagné"
    return true    
        elsif @A2.contenu == @B2.contenu && @B2.contenu == @C2.contenu && @C2.contenu == @A2.contenu
    puts "Vous avez gagné"
    return true    
        elsif @A3.contenu == @B3.contenu && @B3.contenu == @C3.contenu && @C3.contenu == @A3.contenu
    puts "Vous avez gagné"
    return true    
        elsif @A1.contenu == @B2.contenu && @B2.contenu == @C3.contenu && @A1.contenu == @C3.contenu
    puts "Vous avez gagné"
    return true    
        elsif @A3.contenu == @B2.contenu && @B2.contenu == @C1.contenu && @A3.contenu == @C1.contenu
    puts "Vous avez gagné"
    return true    
    else return not_yet

    end