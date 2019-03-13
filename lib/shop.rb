class Shop
  ITEMS = {
    'A' => {price: 50, offer_amount: 3, discount: 20},
    'B' => {price: 30, offer_amount: 2, discount: 15},
    'C' => {price: 20},
    'D' => {price: 15}
  }

  def checkout(input)
    item_count = {
      'A' => 0,
      'B' => 0,
      'C' => 0,
      'D' => 0
    }

    return -1 unless input.is_a?(String)

    result = 0
    input.split('').map do |character|
      return -1 unless ITEMS.include?(character)

      ITEMS.each do |item, data|
        if character == item
          result += data[:price]
          item_count[character] += 1
        end
      end
    end

    ITEMS.each do |item, data|
      if data[:offer_amount]
        result -= data[:discount] * (item_count[item] / data[:offer_amount])
      end
    end

    result
  end
end
