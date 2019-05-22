class Piece
  attr_accessor :color, :board, :pos, :value
  def initialize(color,board,pos)
    @color = color
    @board = board
    @pos = pos
  end

  def moves
    possible_moves = []
    #calling from slideable
    move_piece
  end
end
