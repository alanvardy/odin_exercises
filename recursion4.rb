def fibonacci(num, arr = [0,1])
  if arr.length > num
    return arr[num]
  else
    fibonacci(num, arr.push(arr[-1] + arr[-2]))
  end
end

puts fibonacci(6)