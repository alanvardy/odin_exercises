class ChessBoard
  def initialize
    @queue = []
    @found = false
  end

  def knight_moves(origin, destination)
    @queue << Node.new(origin[0], origin[1])

    loop do
      current = @queue.shift
      if [current.x, current.y] == destination
        return "Match!"
      else
        return "No match! #{@queue.length}"
      end
    end
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
puts board.knight_moves([1, 2], [2, 1]).inspect