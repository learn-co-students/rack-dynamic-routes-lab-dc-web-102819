class Item
  attr_accessor :name, :price

  @@all = []
  def initialize(name,price)
    @name = name
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by(item_name)
    Item.all.find do |item|
      if item.name == item_name
        @price = item.price
      else
        @price = nil
      end
    end
    return @price
  end

  item1 = Item.new("banana", 3.2)
  item2 = Item.new("pera", 2.5)
  item3 = Item.new("uva", 3.0)

end
