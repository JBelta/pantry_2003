require "minitest/autorun"
require "minitest/pride"
require './lib/ingredient'
require './lib/pantry'

class PantryTest < Minitest::Test

  def test_it_exist
    pantry = Pantry.new
    assert_instance_of Pantry, pantry
  end

  def test_it_has_attributes
    pantry = Pantry.new
    assert_equal ({}), pantry.stock
  end

  def test_stock_check
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    pantry = Pantry.new
    assert_equal 0, pantry.stock_check(ingredient1)
  end

end
