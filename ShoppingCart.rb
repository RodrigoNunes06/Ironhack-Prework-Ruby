require 'date'


def weekday
  #set a ficticial date to check if it was working
   @date = Date.parse("07-08-2016")
end

class ShoppingCart
  attr_reader :items
  def initialize
    @items = []
  end

  def add_items(item)
    @items.push(item)
  end

  def checkout
    total = 0
    for item in @items
      total += item.price
    end

    if total > 100
      total *= 0.9
    end

    if @items.length > 5
      total *= 0.9
    end

    puts "Your total today is $#{total} Thank you!"
  end
end


class Item
  attr_reader :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Fruits < Item
  def initialize(name, price)
    @price = price
     if  weekday.wday == 6 || weekday.wday == 0
      puts "It's weekend fruits are 10% off!!"
      @price *= 0.9
    end
  end
end
 
class Houseware < Item
  def initialize(name, price)
    @price = price
  end
end





banana = Fruits.new("Banana" , 10)
oj = Item.new("Orange Juice" , 10)
rice = Item.new("Rice" , 1)
vc = Houseware.new("Vacuum Cleaner" , 150)
anchovies = Item.new("Anchovies" , 2)


rodrigos_cart = ShoppingCart.new
rodrigos_cart.add_items(banana)
11.times {rodrigos_cart.add_items(banana)}
puts rodrigos_cart.checkout

