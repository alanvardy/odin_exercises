def append(arr, n)
  return arr if n < 0
  return append(arr.push(n), n-1)
end

p append([], 5) # =>