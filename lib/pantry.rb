require 'pry'
class Pantry
  attr_reader :stock
  def initialize
    @stocking = {}

  end

  def stock
    @stocking
  end

  def stock_check(item)
    @stocking[item]
  end

  def restock(item, amount)
    @stocking[item] = amount
  end

end
