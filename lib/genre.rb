# code genre here
class Genre
  @@all_genres = []

  def self.reset_genres
    @@all_genres.clear
  end

  def self.all 
    @@all_genres
  end

  def self.count
    @@all_genres.length
  end

  attr_accessor(:name,:songs,:artists)

  def initialize
    @name = name
    @songs = []
    @artists = []
    @@all_genres << self
  end

  def artists
    @artists = @artists.uniq
  end

end