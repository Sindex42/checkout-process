require 'shop'

describe Shop do
  describe '#checkout' do
    it 'returns -1' do
      shop = Shop.new
      expect(shop.checkout('aBc')).to eq -1
    end
  end
end
