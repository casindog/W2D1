require 'byebug'
require_relative "cursor.rb"
require_relative 'rook.rb'
require "colorize"

class Board
  attr_reader :rows
  include Enumerable
  # debugger
  def initialize
    @rows = Array.new(8) {Array.new(8)}
  end 

  def add_piece(piece,pos)


  end 

  def each(&prc)
    i = 0
    while i < self.length 
      prc.call(self[i])
      i += 1
    end
    #self
  end

  def [](pos) #[0,0]
    row, col = pos 
    rows[row][col]
  end     
  
  def []=(pos,value)
    row, col = pos 
    rows[row][col] = value
  end 
  
  # def valid_pos?(@cursor_pos)
  #   # begin          
  #     if @cursor_pos[0] < 0 || @cursor_pos[0] > 7 || @cursor_pos[1] > 7 ||@cursor_pos[1] < 0
  #       raise "cursor outside of board" 
  #       return false  
  #     else         
  #       return true 
  #     end        
  # end 

  def move_piece(start_pos,end_pos)
    # Board[start_pos] = nil
    x, y = start_pos   
    a, b = end_pos
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



