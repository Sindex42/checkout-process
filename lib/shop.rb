class Shop
  PRICE_LIST = {
    'A' => 50,
    'B' => 30,
    'C' => 20,
    'D' => 15
  }

  def checkout(input)
    item_count = {
      'A' => 0,
      'B' => 0,
      'C' => 0,
      'D' => 0
    }

    return -1 unless input.is_a?(String)

    split_string = input.split('')
    result = 0

    split_string.map do |character|
      return -1 unless PRICE_LIST.include?(character)

      PRICE_LIST.each do |item, price|
        if character == item
          result += price
          item_count[character] += 1
        end
      end
    end

    result -= 20 * (item_count['A'] / 3)
    result -= 15 * (item_count['B'] / 2)
    result
  end
end
