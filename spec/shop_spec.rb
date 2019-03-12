require 'shop'

describe Shop do
  let(:shop) { described_class.new }

  describe '#checkout' do
    it 'returns -1 for an invalid string' do
      expect(shop.checkout('aBc')).to eq -1
    end

    it 'returns 50 for "A"' do
      expect(shop.checkout('A')).to eq 50
    end
  end
end
