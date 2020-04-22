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

  def test_restock
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    pantry = Pantry.new
    assert_equal 0, pantry.stock_check(ingredient1)

    pantry.restock(ingredient1, 5)
    pantry.restock(ingredient1, 10)
    require 'pry'; binding.pry
    assert_equal 15, pantry.stock_check(ingredient1)

    pantry.restock(ingredient2, 7)
    assert_equal 7, pantry.stock_check(ingredient2)
  end
end
