
board = [ " ", " ", " ", " ", " ", " ", " ", " ", " " ]
def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index (user_input)
  user_input.to_i - 1
end

def valid_move? (board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def position_taken? (board, index)
  board[index] == "X" || board[index] == "O"
end

def move (board, index, current_player = "X")
  board[index] = current_player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else !valid_move?(board, index)
    "Please try again. Enter a number between 1 and 9:"
    input = gets.strip
  end
end
