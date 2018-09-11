require 'Enumerable'

describe 'my_each' do
  it 'iterates through numbers' do
    total = 0
    [1,2,3].my_each{|x| total += x}
    expect(total).to eq(6)
  end

  describe 'my_each_with_index' do
    it 'uses values and index' do
      answer = 0
      [2,3,4].my_each_with_index{|x, index| answer = x if index == 1}
      expect(answer).to eq(3)
    end
  end

  describe 'my_select' do
    it 'can select items' do
      expect([1,2,3,4].my_select{|x| x.even?}).to eq([2,4])
    end
  end

  describe 'my_all?' do
    it 'returns true when all values are true' do
      expect([2,4,6].my_all?{|x| x.even?}).to be(true)
    end

    it 'returns false when one value is false' do
      expect([2,3,6].my_all?{|x| x.even?}).to be(false)
    end
  end

  describe 'my_any?' do
    it 'returns true when a value is true' do
      expect([2,3,5].my_any?{|x| x.even?}).to be(true)
    end

    it 'returns false when all values are false' do
      expect([1,3,5].my_any?{|x| x.even?}).to be(false)
    end
  end

  describe 'my_none?' do
    it 'returns true if all values are false' do
      expect([1,3,5].my_none?{|x| x.even?}).to be(true)
    end

    it 'returns false if any value is true' do
      expect([2,3,5].my_none?{|x| x.even?}).to be(false)
    end
  end

  describe 'my_count' do
    it 'returns the number of items that match' do
      expect([1,2,3,4,5].my_count{|x| x.even?}).to eq(2)
    end
  end

  describe 'my_map' do
    it 'applies block to elements' do
      expect([1,2,3,4,5].my_map{|x| x*2}).to eq([2,4,6,8,10])
    end
  end
end