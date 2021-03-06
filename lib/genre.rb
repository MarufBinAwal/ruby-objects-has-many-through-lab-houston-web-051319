class Genre

    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
        
    end

    def songs 
        Song.all.select do |jams|
            jams.genre == self
        end  
    end

    def artists
        self.songs.map do | my_artists |
            my_artists.artist
        end
    end

end