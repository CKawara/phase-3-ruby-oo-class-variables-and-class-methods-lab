class Song

    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre

    @@count = 0
    @@genres =[]
    @@artists=[]
    @@genre_count ={}
    @@artist_count={}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@genres << @genre
        @@artists << @artist
    end

    def self.count
        @@count
    end
    def self.genres
        @@genres.uniq
    end
    def self.genre_count
        @@genres.tally
    end
    def self.artists
        @@artists.uniq
    end
    def self.artist_count
        @@artists.tally 
    end
    
end