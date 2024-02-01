class Board
    #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
    #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
    attr_accessor :row_array
  
    def initialize
      #TO DO :
      #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
      #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
      @a1 = BoardCase.new("1")
      @a2 = BoardCase.new("2")
      @a3 = BoardCase.new("3")
      @b1 = BoardCase.new("4")
      @b2 = BoardCase.new("5")
      @b3 = BoardCase.new("6")
      @c1 = BoardCase.new("7")
      @c2 = BoardCase.new("8")
      @c3 = BoardCase.new("9")
      @row_array = [[@a1, @a2, @a3],[@b1, @b2, @b3],[@c1, @c2, @c3]]
      @all_board_cases = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    end
  
    def play_turn(player)
      #TO DO : une méthode qui :
      #1) demande au bon joueur ce qu'il souhaite faire
      puts "#{player.name}, que veux-tu jouer, choisis le numéro de case entre 1 à 9?"
      print "> "
      player_case = gets.chomp
      while !@all_board_cases.include?(player_case) # on teste si la case est disponible
        puts "Choisis une autre case qui n'est pas encore cochée"
        print "> "
        player_case = gets.chomp
      end
  
      #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  
      case player_case
  
      when "1"
        @a1.case_value = player.sign
        @all_board_cases.delete("1")
      when "2"
        @a2.case_value = player.sign
        @all_board_cases.delete("2")
      when "3"
        @a3.case_value = player.sign
        @all_board_cases.delete("3")
      when "4"
        @b1.case_value = player.sign
        @all_board_cases.delete("4")
      when "5"
        @b2.case_value = player.sign
        @all_board_cases.delete("5")
      when "6"
        @b3.case_value = player.sign
        @all_board_cases.delete("6")
      when "7"
        @c1.case_value = player.sign
        @all_board_cases.delete("7")
      when "8"
        @c2.case_value = player.sign
        @all_board_cases.delete("8")
      when "9"
        @c3.case_value = player.sign
        @all_board_cases.delete("9")  
      end
    end
  
    def victory?(player, status)
      #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
      if (@a1.case_value == @a2.case_value) && (@a2.case_value == @a3.case_value) && (@a1.case_value != "_".white)
        puts "#{player.name} a gagné!" + "\u{1f60e}"
        return true
      elsif (@b1.case_value == @b2.case_value) && (@b2.case_value == @b3.case_value) && (@b1.case_value != "_".white)
        puts "#{player.name} a gagné!" + "\u{1f60e}"
        return true
      elsif (@c1.case_value == @c2.case_value) && (@c2.case_value == @c3.case_value) && (@c1.case_value != "_".white)
        puts "#{player.name} a gagné!" + "\u{1f60e}"
        return true
      elsif (@a1.case_value == @b1.case_value) && (@b1.case_value == @c1.case_value) && (@a1.case_value != "_".white)
        puts "#{player.name} a gagné!"+ "\u{1f60e}"
        return true
      elsif (@a2.case_value == @b2.case_value) && (@b2.case_value == @c2.case_value) && (@a2.case_value != "_".white)
        puts "#{player.name} a gagné!"+ "\u{1f60e}"
        return true
      elsif (@a3.case_value == @b3.case_value) && (@b3.case_value == @c3.case_value) && (@a3.case_value != "_".white)
        puts "#{player.name} a gagné!"+ "\u{1f60e}"
        return true
      elsif (@a1.case_value == @b2.case_value) && (@b2.case_value == @c3.case_value) && (@a1.case_value != "_".white)
        puts "#{player.name} a gagné!"+ "\u{1f60e}"
        return true
      elsif (@a3.case_value == @b2.case_value) && (@b2.case_value == @c1.case_value) && (@a3.case_value != "_".white)
        puts "#{player.name} a gagné!"+ "\u{1f60e}"
        return true
      end
    end

end

