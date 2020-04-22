class Ingredient
  attr_reader :name, :unit, :calories

  def initialize (food)
    @name = food[:name]
    @unit = food[:unit]
    @calories = food[:calories]
  end
end
