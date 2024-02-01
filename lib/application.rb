class Application
    def perform
      # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
      # 
    puts "---DEMARAGE-DE-MORPION-RUBY---"
    @game = Game.new # création de l'instance Game
    @game.turn # commence un tour
    end
  
  end