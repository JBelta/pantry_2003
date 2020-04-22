class Recipe
  attr_reader :name, :ingredients, :ingredients_required

  def initialize(name)
    @name = name
    @ingredients = Array.new
    @ingredients_required = Hash.new(0)
  end
end
