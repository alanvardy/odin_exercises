require './Enumerable'

[1,2,3].my_each do |x|
  puts x * 2
end

["Dog","Cat","Moose"].my_each_with_index do |x, y|
  puts "#{y}: #{x}"
end

[1,2,3,4,5].my_select do |x|
  x % 2 == 0
end

[1,2,3,4,"e"].my_all? do |x|
  x.is_a? Integer
end

x2 = Proc.new {|x| x * 2}

[1,2,3,4].my_map(&x2)