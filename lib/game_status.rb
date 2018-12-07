# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
    [0,1,2], 
    [3,4,5],
    [6,7,8], 
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]
  

def won?(board)
  WIN_COMBINATIONS.each do |combination|
    if board.values_at(*combination).all?{ |obj| obj == "X"}  || board.values_at(*combination).all?{ |obj| obj == "O"}
      return combination
    end
  end
  return nil
end

def full?(board)
  board.all? { |obj| obj == "X" || obj == "O" }
end

def draw?(board)
  !(won?(board)) && full?(board)
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
  won?(board) ? won?(board)[0] : false
end
  