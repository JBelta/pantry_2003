require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'
require './lib/pantry'
require './lib/cook_book'


class CookBookTest < Minitest:: Test
  def test_it_exist
    cookbook = CookBook.new
    assert_instance_of CookBook, cookbook
  end

  def test_add_recipies
    cookbook = CookBook.new
    recipe1 = Recipe.new("Mac and Cheese")
    recipe2 = Recipe.new("Cheese Burger")
    assert_equal [], cookbook.recipies

    cookbook.add_recipe(recipe1)
    cookbook.add_recipe(recipe2)
    assert_equal [recipe1, recipe2], cookbook.recipies
  end
### Iter 3###
    def setup
      @pantry = Pantry.new
      @cookbook = CookBook.new
      @ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
      @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
      @recipe1 = Recipe.new("Mac and Cheese")
      @ingredient3 = Ingredient.new({name: "Ground Beef", unit: "oz", calories: 100})
      @ingredient4 = Ingredient.new({name: "Bun", unit: "g", calories: 75})
      @recipe2 = Recipe.new("Cheese Burger")
    end

    def test_setup_recipe1
      @recipe1.add_ingredient(@ingredient1, 2)
      @recipe1. add_ingredient(@ingredient2, 8)
      assert_equal [@ingredient1, @ingredient2], @recipe1.ingredients
    end

    def test_setup_recipe2
      @recipe2.add_ingredient(@ingredient1, 2)
      @recipe2.add_ingredient(@ingredient3, 4)
      @recipe2.add_ingredient(@ingredient4, 1)
      assert_equal [@ingredient1, @ingredient3, @ingredient4], @recipe2.ingredients
    end

end
