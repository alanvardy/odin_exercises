require "car"

describe '::Car' do
  describe '.colors' do
    it 'returns an array of color names' do
      c = ['blue', 'black', 'red', 'green']
      expect(Car.colors).to match(c)
    end
  end

  describe '#full_name' do
    it 'returns a formatted description' do
      car = Car.new({make: "BMW", year: "2018", color: "Black"})
      expect(car.full_name).to eq("2018 BMW (Black)")
    end
  end
end