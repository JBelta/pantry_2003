class Recipe
  attr_reader :name, :ingredients, :ingredients_required

  def initialize(name)
    @name = name
    @ingredients = Array.new
    @ingredients_required = Hash.new(0)
  end

  def add_ingredient(food, amount)
    (@ingredients_required[food] += amount)
    #couldn't we make this a module?
    if @ingredients.any?(food) == false
      @ingredients << food
    end
  end

end
