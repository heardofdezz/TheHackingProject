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
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
  end

  def victory?
    #TO DO : qui gagne ?
  end

class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
  attr_accessor :Player1, :Player2



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
