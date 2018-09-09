require "caesar_cipher"

describe 'change_char' do
  context 'rejects bad input' do
    it 'returns same char if not a letter' do
      expect(change_char("1",1)).to eq("1")
    end
  end

  context 'formats correctly' do
    it 'returns capital letters' do
      expect(change_char("M", 0)).to eq("M")
    end
  end
end

describe 'encrypt' do
  context 'gives correct output by' do
    it 'changing the characters' do
      expect(encrypt("bcd", 2)).to eq("zab")
    end

    it 'handling a negative offset' do
      expect(encrypt("abc", -1)).to eq("bcd")
    end
  end

end