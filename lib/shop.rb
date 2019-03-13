class Shop
  ITEMS = %w[A B C D]

  def checkout(input)
    return -1 unless input.is_a?(String)

    split_string = input.split('')
    result = a_count = b_count = 0

    split_string.map do |character|
      return -1 unless ITEMS.include?(character)

      if character == 'A'
        result += 50
        a_count += 1
      end

      if character == 'B'
        result += 30
        b_count += 1
      end

      result += 20 if character == 'C'
      result += 15 if character == 'D'

    end

    result -= 20 * (a_count / 3)
    result -= 15 * (b_count / 2)
    result
  end
end
