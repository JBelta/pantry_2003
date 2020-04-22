class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def restock(food, amount)
    @stock[food] += amount
  end

  def stock_check(food)
    if @stock.key?(food) == false
      0
    elsif @stock.key?(food) == true
      @stock[food]
    end
  end

end
