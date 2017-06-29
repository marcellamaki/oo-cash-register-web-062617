require 'pry'

class CashRegister


attr_accessor :total, :discount, :items



def initialize(employee_discount = 0)
  @total = 0
  @discount = employee_discount
  @items = []
  @prices = []
end


def add_item(title, price, quantity=1)
  @total += price * quantity
  quantity.times {@items << title}
  @prices << price

end


def apply_discount
  if @discount > 0
      @total = total * (100 - @discount)/100
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
end
end

def void_last_transaction
# binding.pry
  @total -= @prices.last
  @items.pop

end
end
