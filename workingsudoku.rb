#Ruby sudoku game program. Assume that the grid is of 9 * 9.

class InvalidSudokuInput < Exception; end

class Sudoku

  def accept_input
    puts "Enter the number to be placed and its row, column position in the range of 1 to 9 respectively.\nTo replace a number insert another number at that position"
    puts "Enter 11 thrice to quit"
    return gets.chomp.to_i, gets.chomp.to_i - 1, gets.chomp.to_i - 1
  end

  def initialize
    @grid = [[0, 0, 3, 0, 7, 0, 9, 0, 0],
             [2, 0, 0, 3, 0, 8, 6, 0, 0],
             [0, 7, 5, 9, 0, 2, 0, 1, 0],
             [0, 5, 0, 0, 0, 0, 2, 4, 3],
             [0, 0, 2, 8, 3, 4, 5, 0, 0],
             [4, 3, 7, 0, 0, 0, 0, 0, 0],
             [0, 2, 0, 1, 0, 9, 4, 3, 0],
             [0, 0, 4, 7, 0, 5, 0, 0, 2],
             [0, 0, 6, 0, 2, 0, 7, 0, 0]
    ]

    @original_grid = @grid.collect{|row| row.collect{|col| col}}
  end

  def store_number(row, col, number) # Function to store the number in the grid.
    @grid[row][col] = number
  end

  def display_grid # Function to display the grid
    @grid.each{ |row| puts "|" + row.join(" ") + "|" }# Use join method of array class to remove the white spaces.
    check_validity(accept_input)
  end

  def get_cube(row, col)
    cube = []
    [(0..2), (3..5), (6..8)].each do |range1| # Iterates through the ranges & if
      #one of them includes the cube number then iterates again.
      if range1.include? ((row / 3) + (col / 3)) + (row / 3) * 2 # To get a 3 x 3 cube number
        [(0..2), (3..5), (6..8)].each do |range2| # If it includes the cube
          #number then iterate again to check if the column is in the cube.
          #cube = range1.collect{|row1| @grid[row1][range2]} if range2.include?(col)
          if range2.include? col
            range1.each do |row1| # store all the elements of that cube and return
              cube << @grid[row1][range2] # saves the grid of 3 x 3 in array
            end
          end
        end
      end
    end
    cube.flatten # It returns a new array that is a one-dimensional. e.g. [[1, 2, 3]]
  end

  def cube_valid(row, col, number) # method to check if the number is already present in the cube.
    !get_cube(row, col).include? number
  end

  def row_valid?(row, number) # Method to check if the row already contains the number to be inserted.
    !@grid[row].include? number # check if the array does not contain the number.
  end

  def col_valid?(col, number, temp_grid) # Method to check if the number already exists in the column.
    !temp_grid[col].include? number
  end

  def check_validity(arr) # Function to check if the number should be stored in the grid
    number, row, col = arr
    if number == 11 && row == 10 && col == 10
      puts "program exited"
      exit
    end
    begin
      if (!(0..9).to_a.include?(number) || !(0..8).to_a.include?(row) || !(0..8).to_a.include?(col))
        raise InvalidSudokuInput.new("Error :: Number entered out of range.")
      elsif (@original_grid[row][col] != 0)  # Working on if the number is to be entered on the original grid
        puts row, col
        @original_grid.each{|row1| puts '|' + row1.join(" ") + '|'}
        raise InvalidSudokuInput.new("Error :  You cannot edit the numbers which are entered set at the beginning.")
      elsif (cube_valid(row, col, number) && row_valid?(row, number) &&  col_valid?(col, number, @grid.transpose))# && (!number.zero?))
        store_number(row, col, number)
        puts "Number has been stored at position row : #{row}, col : #{col}"
        display_grid
      else
        raise InvalidSudokuInput.new("Number already exists")
      end
    rescue InvalidSudokuInput=> e
      puts e.message
      display_grid
    end
  end
  def accept_number # function to accept number from user.
    if !@grid.flatten.include? 0 # flatten method returns a new 1-D array.
      puts "Game completed"
    else
      check_validity(accept_input)
    end
  end
end

sudo = Sudoku.new
sudo.display_grid
