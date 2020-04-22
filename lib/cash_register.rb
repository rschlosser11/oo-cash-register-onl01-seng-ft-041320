class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0.00
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    @total = @total - (@total * (discount / 100)) if @discount != 0
  end
end
