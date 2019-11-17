class Item

  attr_accessor :name, :price

  # @@all = []

  def initialize(name,price)
    @name = name
    @price = price
    # @@all << self
  end

  # def self.all
  # 	@@all
  # end

  # def self.find(string)
  # 	Item.all.find do |item| 
  # 		item.name.downcase == string.downcase
  # 	end
  # end

  

end
