class ChessBoard
  def initialize

  end
end

class Node
  def initialize(x, y, path = [])
    @x = x
    @y = y
    @path = path << [x, y]
  end
end