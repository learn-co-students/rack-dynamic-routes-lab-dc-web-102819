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

  # def self.find(string)
  # 	Item.all.find do |item| 
  # 		item.name.downcase == string.downcase
  # 	end
  # end

  def self.seed
  	Item.new("Marker", rand(0.01..9.99).round(2))
	Item.new("Tape", rand(0.01..9.99).round(2))
	Item.new("Glue", rand(0.01..9.99).round(2)) 
  end
  

end
