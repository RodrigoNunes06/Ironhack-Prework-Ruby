class Shake_Shop

  def initialize
    @list = [ ]
  end

  def add_item(item)
    @list.push(item)
  end

  def checkout

    total = 0
    for item in @list
      total += item.price_of_milkshake
    end

    puts " Your total is $#{total} ."
  end
end


class MilkShake
  attr_reader :base_price,:ingredients
  def initialize
    @base_price = 3
    @ingredients = [ ]    
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def price_of_milkshake
    #Let's establish what our counter should be before we start adding ingredients into the mix
    total_price_of_milkshake = @base_price
    #Add each ingredients price to our total
    @ingredients.each do |ingredient|
      total_price_of_milkshake += ingredient.price
    end
    #return  our total price to whoever called for it
     
     total_price_of_milkshake
  end

end

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end



nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
orange = Ingredient.new("Orange", 2)

nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
nizars_milkshake.add_ingredient(orange)


josh_shake_shack = Shake_Shop.new
josh_shake_shack.add_item(nizars_milkshake)

josh_shake_shack.checkout
