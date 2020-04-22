class CookBook
  attr_reader :recipies

  def initialize
    @recipies = Array.new
  end

  def add_recipe(recipe)
    @recipies << recipe
  end
end
