require 'pry'
class Song

    attr_accessor :name, :artist, :genre

    @@count=0
    @@genres = []
    @@artists =[]
    @@genre_histogram_array = {}


    def initialize(name,artist,genre)
        @name,@artist,@genre = name, artist, genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_histogram_hash = {}
        @@genres.uniq.each do |genre|
            genre_histogram_hash[genre] = 0
        end

         @@genres.each do |element|
            genre_histogram_hash[element] += 1
         end
         genre_histogram_hash
    end

    def self.artist_count
        artists_hash = {}
        @@artists.uniq.each do |artist|
            artists_hash[artist] = 0
        end
        @@artists.each do |artist|
            artists_hash[artist] += 1
        end
        artists_hash
        
    end

end