require './lib/pantry'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class PantryTest < Minitest::Test

  def test_it_exists
    pantry = Pantry.new
    assert_instance_of Pantry, pantry
  end

  # def test_stock_empty
  #   pantry = Pantry.new
  #   assert_equal {}, pantry.stock
  # end

  def test_stock_amount
    pantry = Pantry.new
    assert_equal 0, pantry.stock_check("Cheese")
  end

  def test_adding_items_to_stock_and_count
    pantry = Pantry.new
    pantry.restock("Cheese", 10)
    assert_equal 10, pantry.stock_check("Cheese")
  end 
end
