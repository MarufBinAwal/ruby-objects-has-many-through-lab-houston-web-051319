class Artist

    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs 
        Song.all.select do |jams|
            jams.artist == self
        end  
    end

    def genres
        self.songs.map do | my_songs |
            my_songs.genre
        end
    end
    

        
    
end