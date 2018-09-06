class ChessBoard
  def initialize
    @queue = []
    @found = false
  end

  def create_children(node) #todo something is seriously wrong here
    moves = [{x: 2, y: 1}, {x: 2, y: -1}, {x: -2, y: 1}, {x: -2, y: -1}, {x: 1, y: 2}, {x: 1, y: -2}, {x: -1, y: 2}, {x: -1, y: -2}]
    moves.each do |move|
      @queue << Node.new(node.x + move[:x], node.y + move[:y], node.path)
      puts @queue[-1].inspect
    end
  end

  def knight_moves(origin, destination)
    @queue << Node.new(origin[0], origin[1])

    loop do
      current_node = @queue.shift
      if [current_node.x, current_node.y] == destination
        return "Match!"
      else
        create_children(current_node)
        return "No match! #{@queue.length}"
      end
    end
  end
end

class Node
  attr_accessor :x, :y
  attr_reader :path

  def initialize(x, y, path_init = [])
    @x = x
    @y = y
    @path = path_init << [x, y]
  end
end

board = ChessBoard.new
puts board.knight_moves([1, 2], [2, 1]).inspect