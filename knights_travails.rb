class ChessBoard
  def initialize
    @queue = []
    @found = false
  end

  def create_children(node)
    moves = [{x: 2, y: 1}, {x: 2, y: -1}, {x: -2, y: 1}, {x: -2, y: -1}, {x: 1, y: 2}, {x: 1, y: -2}, {x: -1, y: 2}, {x: -1, y: -2}]
    moves.each do |move|
      new_location = Node.new(node.x + move[:x], node.y + move[:y])
      @queue << new_location if new_location.on_board?
      puts @queue[-1].inspect if new_location.on_board? #todo remove line (testing)
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

  def initialize(x, y)
    @x = x
    @y = y
  end

  def on_board?
    return (@x < 9 && @x > 0 && @y < 9 && @y > 0) ? true : false
  end

end

board = ChessBoard.new
puts board.knight_moves([1, 2], [2, 1]).inspect