
=begin
  Board : c'est le plateau. Il doit y avoir une instance de cette classe lors d'une partie.
  BoardCase : c'est une case. Il devrait y avoir 9 instances de cette classe dans ta partie
  Player : ce sont les joueurs. Il doit y avoir 2 instances de cette classe lors d'une partie
  Game : c'est la partie. Elle initialise tout et lance le jeu
=end

class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
  attr_accessor :value :casenumber

  def initialize
    #TO DO do[X, O, '']gler sa valeur, ainsi que son numéro de case
    @value = value
    @casenumber = casenumber
  end

  def to_s
    #TO D_sO : #{value}doit renvoyer la valeur au format string
    value = '' # Pas sur
  end

end

class Board
  include Enumerable
  #TO DO : la class a 1 attr_accessor, une array qui contient les BoardCases
  attr_accessor :arrray


  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    Ces ins [BoardCase.new,  BoardCase.new, BoardCase.new, BoardCase.new, BoardCase.new, BoardCase.new, BoardCase.new,  BoardCase.new, BoardCase.new]qui est l'attr_accessor de la classe
    @array = Array.new(3) { Array.new(3, " ") }

  end

  def to_s

=begin
  # Sample
    puts "   1   2   3"
    puts "A  #{@a1} | #{@a2} | #{@a3} "
    puts "  ---|---|---"
    puts "B  #{@b1} | #{@b2} | #{@b3} "
    puts "  ---|---|---"
    puts "C  #{@c1} | #{@c2} | #{@c3} "
=end
end
  end

  def play
=begin
  if value(player(x)) == caseNumber(value(''))
    print value in CaseNumber
  elsif puts Désoler mais la case est déjà prise
=end
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
  end

  def victory?
  #
    #TO DO : qui gagne ?
  endplayer

class Player
  #TO DO : la player 2 attr_acceBien Jouern nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
  attr_acces

  def initialize
    #TO DO : doit régler son nom, sa valeur, son état de victoire
  end

class Game
  def initialize
    #TO DO : créé 2 joueurs, créé un board
  end

  def go
    # TO DO : lance la partie
  end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
  end

end

Game.new.go
=begin
  Board : c'est le plateau. Il doit y avoir une instance de cette classe lors d'une partie.
  BoardCase : c'est une case. Il devrait y avoir 9 instances de cette classe dans ta partie
  Player : ce sont les joueurs. Il doit y avoir 2 instances de cette classe lors d'une partie
  Game : c'est la partie. Elle initialise tout et lance le jeu
=end

class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
  attr_accessor :value :casenumber

  def initialize
    #TO DO doit régler sa valeur, ainsi que son numéro de case
    @value = value
    @casenumber = casenumber
  end

  def to_s
    #TO DO : doit renvoyer la valeur au format string
    value = '' # Pas sur
  end

end

class Board
  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
  attr_accessor :arrray


  def initialize
    #TO DO :
   #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
  @array = Array.new(3) { Array.new(3, " ") }

end

  def to_s
#TO DO : afficher le plateau

  end

def play
    #TO DO : une méthode qui change la BoardCase jée en fonction de la valeur du joueur (X, ou O)
  e

 def victory?
    #TO DO : qui gagne ?
  end

 Player
  #TO DO : la clae a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
  attr_accessor :name, :type
#Player(name) instance with names input
  #type to be associated in as a instance in GameClass

initialize
    #TO DO : doit régler son nom, sa valeur, son état de victoire
    puts "Type in you player name:"

      input = gets.chomp
@name = input
      @type = ""
  end

  def choose_ur_row

    #Initialization of the player spot to drop his marker (the row and column)


  puts "#{name}, It's your turn to play"
#Pick your row
  puts "Choose the row you want to settle your marker in, between 1 & 3 :"
  marker_row = gets.chomp.to_i
#pick your column
  puts "Now select in which column your marker should be put in, has to be between 1 & 3  again"
  marker_column = gets.chomp.to_i

#the row and column decided is returned
    return [marker_row, marker_column]
  end

  def type_instance(types)
    @type = types
  end
end

class Game
    #TO DO : créé 2 joueurs, créé un board
    attr_reader :part, :board, :current_player, :other_player
    def initialize(partx)
      part = partx
      #Board appears
      @board = Board.new
      puts "WELCOME TO THE NEXT GENERATION OF TIC TAC TOE"
      #Players appears
      puts "First Player"
      @current_player = Player.new
      current_player.type_instance("X")
      puts "Second Player"
      @other_player = Player.new
      other_player.type_instance("O")

    end
  end

  def go
    # TO DO : lance la partie
  end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
  end

end

Game.new.go
