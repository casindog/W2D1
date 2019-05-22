#require_relative "Slideable.rb"
require_relative 'board.rb'

class Rook 
  #include "Slideable"
  attr_reader :value
  def initialize(color)
    @name = "Rook"
    @color = color 
    @value = "R"
  end 

  def move(board,pos)
    #call from slideable
    #an array of possible moves
    #possible_moves = poss_dir(board,self,pos)

    #this method call is from board.rb
  
    #if possible_moves.include?(endposition)
    #call the board method to move piece
    # 
  #end

  end    

end