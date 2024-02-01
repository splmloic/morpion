class Show

    def show_board(board)
     puts "=".white * 13
     3.times do |x|
       print "| ".white
       3.times do |y|
            print "#{board.row_array[x][y].case_value} | "
       end
       puts " "
       puts "=".white * 13
     end
   end
  
  end