class Pantry
  attr_reader :stock

  def initialize
    @stock = ({})
  end

  def stock_check(food)
    if @stock.any?(food) == false
      @stock.count
    elsif
      food.value
    end
  end
end
