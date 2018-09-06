class ChessBoard
  def initialize
    @queue = []
    @found = false
  end

  def knight_moves(origin, destination)
    @queue << Node.new(origin[0], origin[1])
    return @queue.shift
  end
end

class Node
  attr_accessor :x, :y, :path
  def initialize(x, y, path = [])
    @x = x
    @y = y
    @path = path << [x, y]
  end
end

board = ChessBoard.new
puts board.knight_moves([1, 2], [3, 4]).inspect