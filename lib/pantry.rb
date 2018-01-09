require 'pry'
class Pantry
  # attr_reader :stock
  def initialize
     @stocking   = {}
     @additional = {}

  end

  def stock
    @stocking
  end

  def stock_check(item)
     @additional[item].to_i

  end

  # def restock(item, amount)
  #   @stocking[item] = amount
  # end
  def restock(item, amount)
    @additional[item] = amount
    @additional.merge!(@stocking) do |key, oldval, newval|
      newval + oldval
    end
  end



end
