require 'shop'

describe Shop do
  subject(:shop) { described_class.new }

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

    context 'non special offers' do
      it 'returns 50 for "A"' do
        expect(shop.checkout('A')).to eq 50
      end

      it 'returns 100 for "AA"' do
        expect(shop.checkout('AA')).to eq 100
      end

      it 'returns 30 for "B"' do
        expect(shop.checkout('B')).to eq 30
      end

      it 'returns 20 for "C"' do
        expect(shop.checkout('C')).to eq 20
      end

      it 'returns 15 for "D"' do
        expect(shop.checkout('D')).to eq 15
      end

      it 'returns 115 for "ABCD"' do
        expect(shop.checkout('ABCD')).to eq 115
      end
    end

    context 'special offers' do
      it 'returns 130 for "AAA"' do
        expect(shop.checkout('AAA')).to eq 130
      end
    end
  end
end
