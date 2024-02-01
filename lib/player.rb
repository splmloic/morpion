class Player
    #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
    attr_reader :name, :sign
    
    def initialize(player)
      #TO DO : doit régler son nom et sa valeur
      puts "#{player} : Salut toi " + "\u{1F913}" + " comment tu t'appelle ?"
      print ">"
      @name = gets.chomp
      loop do #fait bouclé pour forcer le choix
        puts "Tu veux jouer avec quel signe X ou O?"
        puts "Team X ou Team O ? " + "\u{1F9D0}"
        print ">"
        sign = gets.chomp
        if sign == "X" 
            @sign = sign
            break
        elsif sign == "O"
            @sign = sign
            break
        end
       end
    end
end