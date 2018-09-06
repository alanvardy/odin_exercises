class ChessBoard
  def initialize
    @queue = []
    @found = false
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

test = Node.new(1, 3)
puts test.path.inspect
test2 = Node.new(1, 5, test.path)
puts test2.path.inspect