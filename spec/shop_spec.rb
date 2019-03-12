require 'shop'

describe Shop do
  let(:shop) { described_class.new }

  describe '#checkout' do
    context 'invalid inputs' do
      it 'returns -1 for "aBc"' do
        expect(shop.checkout('aBc')).to eq -1
      end

      it 'returns -1 for "-B8x"' do
        expect(shop.checkout('-B8x')).to eq -1
      end

      it 'returns -1 for 18' do
        expect(shop.checkout(18)).to eq -1
      end
    end

    it 'returns 50 for "A"' do
      expect(shop.checkout('A')).to eq 50
    end

    it 'returns 100 for "AA"' do
      expect(shop.checkout('AA')).to eq 100
    end

    it 'returns 30 for "B"' do
      expect(shop.checkout('B')).to eq 30
    end
  end
end
