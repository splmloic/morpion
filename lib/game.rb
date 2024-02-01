class Game
    #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
    attr_accessor :player, :status, :board, :array_players
    def initialize
      #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
      @player1 = Player.new("Joueur 1")
      @player2 = Player.new("Joueur 2")
      @board = Board.new
      @player = @player1
      @array_players = [@player1, @player2]
      @status = "en cours"
      @count_turns = 0
    end
  
    def turn
      #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.

    while @status == "en cours"

        Show.new.show_board(@board) #affiche le jeu
        @board.play_turn(@player) #fait jouer joueur
  
        #Si victoire stop
        if @board.victory?(@player, @status) == true
          @status = "win"
          puts ""
          Show.new.show_board(@board)
          new_round # relance une partie selon le choix de l'utilisateur
        end

        # passe au joueur suivant
        if @player == @player1
          @player = @player2
        else
          @player = @player1
        end
  
        # compteur de tours + check s'il y a match nul
        @count_turns += 1
        if @count_turns == 9 
            @status = "nul" 
                puts "Match nul."+"\u{1F644}"
            new_round
        end
      end
    end
  
    def new_round
      # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
      loop do 
          puts "Vous voulez relancer une nouvelle partie? Entrer O si oui N si non"
          print ">"
          answer = gets.chomp
            if answer == "O"
                @status = "en cours"
                @count_turns = 0
                @board = Board.new
                puts "La partie du jeu va recommencer" + "\u{1F973}"
                turn
                break
            elsif answer == "N"
                game_end
                break
            end
        end
    end
  
    def game_end
      # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
      puts "La partie est finie !! Reviens vite !!!!!"
    end    
  
  end