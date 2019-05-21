require 'byebug'
class Board 
  attr_reader :rows
  include Enumerable
  # debugger
  def initialize
    @rows = Array.new(8) {Array.new(8)}
  end 

  def add_piece(piece,pos)


  end 

  def [](pos) #[0,0]
    row, col = pos 
    rows[row][col]
  end     
  
  def []=(pos,value)
    row, col = pos 
    rows[row][col] = value
  end 
  

  def move_piece(start_pos,end_pos)
    # Board[start_pos] = nil
    debugger
    if Board.[]([start_pos]) == nil 
      raise "no piece to move" 
    elsif Board[end_pos] != nil  
      raise "there is already a piece there" 
    else          
      Board[end_pos] = Board[start_pos] 
      Board[start_pos] = nil
    end
  end   
 
end    


class Piece
  attr_accessor :color, :board, :pos, :value
  def initialize(color,board,pos)
    @color = color
    @board = board
    @pos = pos
  end
end

