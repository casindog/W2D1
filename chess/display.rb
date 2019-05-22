require "colorize"
require_relative "cursor.rb"
require_relative "board.rb"
require "byebug"
class Display
  attr_reader :board
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0],board)
    
  end

  def render(board)
    puts board[[0]]
    puts "---------------"
    puts board[[0]]
    puts "---------------"
    puts board[[0]]
    puts "---------------"
    puts board[[0]]
    puts "---------------"
    puts board[[0]]
    puts "---------------"
    puts board[[0]]
    puts "---------------"
  end    
end