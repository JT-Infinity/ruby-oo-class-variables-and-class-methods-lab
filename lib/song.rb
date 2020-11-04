require 'pry'
class Song


    attr_accessor :name, :artist, :genre

    @@count = 0;
    @@genres = [];
    @@artists = [];
    @@genre_count = {};
    @@artist_count = {}; 

    def initialize(name, artist, genre)
        @@count = @@count + 1;
        @@genres << genre;
        @@artists << artist
        @name = name
        @artist = artist
        @genre = genre
        key = genre;
        if @@genre_count.has_key?(key)
            @@genre_count[key] = @@genre_count[key] + 1
        else
            @@genre_count[key] = 1
        end

       key = artist
        if @@artist_count.has_key?(key)
           @@artist_count[key] = @@artist_count[key] + 1
        else
            @@artist_count[key] = 1
        end
    end

    def self.artists
        @@artists.uniq
    end

    def self.artist_count()
        return @@artist_count
    end


    def self.genre_count
       @@genre_count
    end

    def self.count
        @@count
    end


    def self.genres
        @@genres.uniq
    end
end 