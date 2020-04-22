class CashRegister
  attr_accessor :total, :discount, :title, :quantity, :all_items

  def initialize(discount = 0)
    @total = 0
    @discount = discount.to_f
    @all_items = [];
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @quantity = quantity
    @total += price * quantity
  end

  def apply_discount
    return "There is no discount to apply." if @total == 0
    @total = @total - (@total * (discount / 100))
    "After the discount, the total comes to $#{@total.to_i}."
  end

  def items
    @quantity.times {@all_items << @title}
    @all_items
  end
end
