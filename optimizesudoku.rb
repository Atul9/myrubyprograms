#Ruby sudoku olver program. Assume that the grid is of 9 * 9.
def store_number(row, col, number, grid) # Function to store the number in the grid.
  if [1, 2, 3, 4, 5, 6, 7, 8, 9].freeze.include?(number)
    grid[row][col] = number if grid[row][col].zero?
  else
    print "Enter number in the range of 1 to  9"
  end
end

def create_grid #Function to create the board
  grid = [[0, 0, 3, 0, 7, 0, 9, 0, 0], [2, 0, 0, 3, 0, 8, 6, 0, 0], [0, 7, 5, 9, 0, 2, 0, 1, 0], [0, 5, 0, 0, 0, 0, 2, 4, 3],
          [0, 0, 2, 8, 3, 4, 5, 0, 0], [4, 3, 7, 0, 0, 0, 0, 9, 0], [0, 2, 0, 1, 0, 9, 4, 3, 0], [0, 0, 4, 7, 0, 5, 0, 0, 2],
          [0, 0, 6, 0, 2, 0, 7, 0, 0]]
  display_grid(grid)
end

def display_grid(grid) # Function to display the grid
  grid.each{ |row| puts row.join(" ") }# Use join method of array class to remove the white spaces.
end

def get_cube(row, col, grid)
  cube = []
  [(0..2), (3..5), (6..8)].each do |range1| # Iterates through the ranges & if one of them includes the cube number then iterates again
    if range1.include? ((row / 3) + (col / 3)) + (row / 3) * 2 # To get a 3 x 3 cube number
      [(0..2), (3..5), (6..8)].each do |range2| # If it includes the cube number then iterate again to check if the column is in the cube.
        if range2.include? col
          range1.each do |row1| # store all the elements of that cube and return
            cube << grid[row1][range2] # saves the grid of 3 x 3 in array
          end
        end
      end
    end
  end
  cube.flatten # It returns a new array that is a one-dimensional. e.g. [[1, 2, 3]]
end

def cube_valid(row, col, number, grid) # method to check if the number is already present in the cube.
  !get_cube(row, col, grid).include? number
end

def row_valid?(row, number, grid) # Method to check if the row already contains the number to be inserted.
  !grid[row].include? number # check if the array does not contain the number.
end

def col_valid?(col, number, grid) # Method to check if the number already exists in the column.
  arr = []
  9.times do |i|
    arr[i] = grid[i][col] # Keep the col no constant and iterate the row number.
    i = i + 1
  end
  !arr.include? number # Returns true if array does not include number.
end

def check_validity(number, row, col,grid) # Function to check if the number should be stored in the grid
  if (cube_valid(row, col, number, grid) && row_valid?(row, number, grid) &&  col_valid?(col, number, grid))
    store_number(row, col, number, grid)
    display_grid(grid)
    accept_number(grid)
  else
    puts "Number already exists"
    display_grid(grid)
    accept_number(grid)
  end
end

def accept_number(grid) # function to accept number from user.
  if !grid.flatten.include? 0 # flatten method returns a new 1-D array.
    puts "Game completed"
  else
    puts "Enter the number and its x < 9, y < 9 position"
    check_validity(gets.chomp.to_i , gets.chomp.to_i, gets.chomp.to_i, grid)
  end
end

accept_number(create_grid)
