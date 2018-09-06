module Enumerable
  def my_each
    counter = 0
    while counter < (self.length)
      yield self[counter]
      counter += 1
    end
  end

  def my_each_with_index
    counter = 0
    while counter < (self.length)
      yield(self[counter], counter)
      counter += 1
    end
  end

  def my_select
    new_array = []
    self.my_each do |x|
      new_array.push(x) if yield(x)
    end
    new_array
  end

  def my_all?
    return_value = true
    self.my_each do |x|
      return_value = false unless yield(x)
    end
    return_value
  end

  def my_any?
    return_value = false
    self.my_each do |x|
      return_value = true if yield(x)
    end
    return_value
  end

  def my_none?
    return_value = true
    self.my_each do |x|
      return_value = false if yield(x)
    end
    return_value
  end

  def my_count
    counter = 0
    self.my_each do |x|
      counter += 1 if yield(x)
    end
  end

  def my_map
    counter = 0
    self.my_each do |x|
      self[counter] = yield(x)
      counter += 1
    end
    self
  end
end