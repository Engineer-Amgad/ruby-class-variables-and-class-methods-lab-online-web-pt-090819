require 'pry'
class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
    @@genres << genre
    @@artists << artist
  end 
  
  def self.count
    @@count 
  end 
  
  def self.genres 

  end 
  
  def self.artists
    
  end 
  
  def self.genre_count
    genres_hash = {}
    @@genres.each do |genre_type|
      if genres_hash[genre_type]
        genres_hash[genre_type] += 1 
      else
        genres_hash[genre_type] = 1
      end 
    end 
    return genres_hash
    #binding.pry
  end 
end 