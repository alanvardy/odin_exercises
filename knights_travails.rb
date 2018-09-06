class ChessBoard
  attr_accessor :queue
  def initialize
    @queue = []
    @found = false
    @head = nil
  end

  def knight_moves(origin, destination)
    @head = Node.new(origin[0], origin[1])
    @queue << @head
    until @found do
      current_node = @queue.shift
      if [current_node.x, current_node.y] == destination
        @found = true
        return get_path(current_node)
      else
        [*0..7].each do |num|
        new_node = current_node.create_child(num)
          if new_node == nil
            next
          else
            @queue << new_node
          end
        end
      end
    end
  end

  def get_path(objective, present_node = @head, path = []) #todo this needs to be debugged so badly
    path << [present_node.x, present_node.y]
    if  present_node == objective
      puts "FOUND!"
      return path
    elsif !present_node.children.empty?
      puts "MAKING BABIES"
      present_node.children.each do |child|
        answer = get_path(objective, child, path)
        return answer unless answer.nil?
      end
    else
      puts "DEAD END"
      return nil
    end
  end

end

class Node
  attr_accessor :x, :y, :children

  def initialize(x, y)
    @x = x
    @y = y
    @children = []
  end

  def on_board?
    return (@x < 9 && @x > 0 && @y < 9 && @y > 0) ? true : false
  end

  def create_child(num)
    moves = [{x: 2, y: 1}, {x: 2, y: -1}, {x: -2, y: 1}, {x: -2, y: -1}, {x: 1, y: 2}, {x: 1, y: -2}, {x: -1, y: 2}, {x: -1, y: -2}]
      new_location = Node.new(@x + moves[num][:x], @y + moves[num][:y])
      if new_location.on_board?
        @children << new_location
        return new_location
      else
        return nil
      end
  end

end

board = ChessBoard.new
puts board.knight_moves([1, 1], [8, 8]).inspect