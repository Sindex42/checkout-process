class Shop
  ITEMS = %w[A B C]

  def checkout(input)
    return -1 unless input.is_a?(String)

    split_string = input.split('')
    result = 0

    split_string.map do |character|
      return -1 unless ITEMS.include?(character)

      result += 50 if character == 'A'
      result += 30 if character == 'B'
      result += 20 if character == 'C'
    end

    result
  end
end
