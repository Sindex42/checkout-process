class Shop
  def checkout(string)
    split_string = string.split('')
    result = 0

    split_string.each do |character|
      result += 50 if character == 'A'
    end

    return -1 if result == 0  

    result
  end
end
