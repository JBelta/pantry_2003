require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'
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
  end

end
