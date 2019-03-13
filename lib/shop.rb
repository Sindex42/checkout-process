class Shop
  def checkout(input)
    return -1 unless input.is_a?(String)

    split_string = input.split('')
    result = 0

    split_string.map do |character|
      return -1 if character != 'A' && character != 'B'

      result += 50 if character == 'A'
      result += 30 if character == 'B'
    end

    result
  end
end
