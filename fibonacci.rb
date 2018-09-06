def fibs(num)
  seq = []
  count = 0
  while count < num
    if seq.length == 0
      seq.push(0)
    elsif seq.length == 1
      seq.push(1)
    else
      seq.push(seq[-1] + seq[-2])
    end
    count += 1
  end
  seq
end

def fibs_rec(num, arr = [])
  return if num == 0
  arr.empty? ? fibs_rec(num - 1, arr.push(0)) : fibs_rec(num - 1, arr.push(arr.push[-1] + (arr.push[-2] || 1)))
  arr
end

p fibs_rec(10)