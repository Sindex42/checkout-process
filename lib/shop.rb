class Shop
  def checkout(string)
    split_string = string.split('')
    result = 0

    split_string.each do |character|
      return -1 if character != 'A' && character != 'B'

      result += 50 if character == 'A'
      result += 30 if character == 'B'
    end

    result
  end
end
