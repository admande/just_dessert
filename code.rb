class CookieInventory
 attr_accessor :cookies

  def initialize
    @cookies = {
      peanut_butter: 0,
      chocolate_chip: 0,
      sugar: 0
    }
  end


  def cook_batch(type, quantity)
    @cookies[type] += quantity
  end

  def sell!(type, quantity)
    if @cookies[type] < quantity
      puts "Sorry, not enough cookies"
    else
      @cookies[type] -= quantity
    end
  end
end
