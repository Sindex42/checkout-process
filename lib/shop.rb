class Shop
  PRODUCTS = {
    'A' => {price: 50, offer_amount: 3, discount: 20},
    'B' => {price: 30, offer_amount: 2, discount: 15},
    'C' => {price: 20},
    'D' => {price: 15}
  }.freeze

  def initialize
    @item_count = {'A' => 0, 'B' => 0, 'C' => 0, 'D' => 0}
    @result = 0
  end

  def checkout(input)
    return -1 unless input.is_a?(String)

    input.split('').map do |item|
      return -1 unless PRODUCTS.include?(item)
      record_sale(item)
    end

    apply_discount
    result
  end

  private

  attr_reader :item_count, :result

  def record_sale(item)
    PRODUCTS.each do |name, product|
      if item == name
        @result += product[:price]
        @item_count[item] += 1
      end
    end
  end

  def apply_discount
    PRODUCTS.each do |name, product|
      if product[:offer_amount]
        @result -= product[:discount] * (item_count[name] / product[:offer_amount])
      end
    end
  end
end
