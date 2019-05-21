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
    x, y = start_pos   
    a, b = end_pos
    #try it with self[start_pos]
    #tty it with self[end_pos]
    if rows[x][y] == nil 
      raise "no piece to move" 
    elsif rows[a][b] != nil  
      raise "there is already a piece there" 
    else          
      sta = rows[a][b]
      ena = rows[x][y]
      rows[x][y] = nil
      rows[a][b] = ena 
      
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

