class CashRegister
  attr_accessor :total, :discount, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount.to_f
    @@all_items = [];
  end

  def add_item(title, price, quantity = 1)
    quantity.times {@@all_items << title}
    @last_transaction = price
    @total += price * quantity
  end

  def apply_discount
    return "There is no discount to apply." if @total == 0
    @total = @total - (@total * (discount / 100))
    "After the discount, the total comes to $#{@total.to_i}."
  end

  def items
    @@all_items
  end

  def void_last_transaction
    @total -
  end
end
