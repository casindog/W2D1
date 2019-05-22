module Slideable
  def slideable?(piece)
    slide_arr = [Rook,Bishop,Queen]
    slide_arr.include?(piece)
  end 
  def poss_dir(board, piece, pos)
   if slideable?(piece) 
    case    
    when Rook 
      x,y = board[pos]
      possible_moves = []
      (0..7).each do |i|
        if i != x  
          possible_moves << [i,y]
        end 
      end
      
      (0..7).each do |i|
        if i != y
          possible_moves << [x,i]
        end
      end
      possible_moves

    when Bishop 

    when Queen 

    end    

  end 
 end 
end



class Bishop

end

class Queen

end