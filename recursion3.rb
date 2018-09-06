def describe_beer(num, wall = true)
  suffix = wall ? " on the wall" : ""
  case num
  when 0
    puts "No bottles of beer" + suffix
  when 1
    puts "1 bottle of beer" + suffix
  else
    puts "#{num} bottles of beer" + suffix
  end
end

def bottles_of_beer(num)
  puts ""
  describe_beer(num)
  describe_beer(num, false)
  if num > 0
    puts "You take one down,\nPass it around\n"
    describe_beer(num-1)
    bottles_of_beer(num-1)
  else
    puts "...Theres none to take down"
    return
  end
end

bottles_of_beer(99)