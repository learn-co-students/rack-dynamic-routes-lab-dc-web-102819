class Application
    
    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)

        if req.path.match(/items/)
            item_name = req.path.split("/items/").last
            if item = @@items.find do |item| 
                item.name == item_name
                end
                resp.write item.price
            else
                resp.write "Item not found"
                resp.status = 400
            end


            # song_title = req.path.split("/songs/").last #turn /songs/Sorry into Sorry
            # song = @@songs.find{|s| s.title == song_title}
            # resp.write song.artist
        else
            resp.write "Route not found"
            resp.status = 404
        end
        resp.finish
    end
end