# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,4,8],[2,4,6],[1,4,7],[0,3,6],[2,5,8]]

status=[]
win_index=[]
final=[]
def won?(board)
  for each_combination in WIN_COMBINATIONS
    win_index_1=each_combination[0]
    win_index_2=each_combination[1]
    win_index_3=each_combination[2]
    
    position_1=board[win_index_1]
    position_2=board[win_index_2]
    position_3=board[win_index_3]
    
    status=[position_1,position_2,position_3]
    win_index=[win_index_1,win_index_2,win_index_3]

    if status.all? {|x| x=="X"} or status.all? {|x| x=="O"}
      final=win_index
    else
      false
    end
  end
  return final
end



def full?(board)
  if board.any? {|x| x==" "}
    false
  else
    true
  end
end


def draw?(board)
  if board.any? {|x| x==" "} && won?(board)==false
    false 
  elsif board.any? {|x| x==" "} == false && won?(board)==false
    true 
  end
end


def over?(board)
  if won?(board)!=false or draw?(board)==true or full?(board)==true
    true 
  else
    false
  end
end


def winner(board)
  for each_combination in WIN_COMBINATIONS
    win_index_1=each_combination[0]
    win_index_2=each_combination[1]
    win_index_3=each_combination[2]
    
    position_1=board[win_index_1]
    position_2=board[win_index_2]
    position_3=board[win_index_3]
    
    status=[position_1,position_2,position_3]
    win_index=[win_index_1,win_index_2,win_index_3]

    if status.all? {|x| x=="X"}
      puts "X"
    elsif status.all? {|x| x=="O"}
      puts "O"
    else
      false
    end
  end
end







puts won?(["X", "X", "X", "O", "X", "X", "O", "X", "O"])