#DISPLAY_BOARD
def DISPLAY_BOARD(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def VALID_MOVE?(board, index)
  if position_taken?(board, index)
    return false
  elsif index.between?(0,8)
    return true
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  elsif board[index] != " "
    return false
  elsif board[index] == ""
    return false
  else board[index] == nil
    return false
  end
end

def MOVE
  puts "Welcome to Tic Tac Toe!"
  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  puts "Where would you like to go?"
  input=gets.strip
  index = input_to_index(input)
  move(board, index, "X")
  puts display_board(board)
end
