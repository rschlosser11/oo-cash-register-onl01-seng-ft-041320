class CashRegister
  attr_accessor :total, :discount

  def initialized(discount = 0)
    @total = 0
    @discount = discount
  end


end
