# require 'pry'
# require_relative('./item.rb')

class Application

	Item.seed
	# @@items = [
	# 	Item.new("Marker", rand(0.01..9.99).round(2)),
	#   	Item.new("Tape", rand(0.01..9.99).round(2)),
	# 	Item.new("Glue", rand(0.01..9.99).round(2))
	# ]  

	def call(env)

		req = Rack::Request.new(env)
		resp = Rack::Response.new

		if req.path.match(/items/)

			# @@items.each do |item|
			# 	resp.write "#{item.name}\n"
			# end

		  find_item = req.path.split("/items/").last

		  # item = @@items.find do |item|
		  item = Item.all.find do |item|
		  	item.name.downcase == find_item.downcase
		  end

		  if item != nil
			resp.write "#{item.price}"
		  else
		  	resp.write "Item not found"
	      	resp.status = 400
		  end
		
		else
	      resp.write "Route not found"
	      resp.status = 404
	    end
		resp.finish
	end

# binding.pry
end
