# code song here
class Song
  attr_accessor(:name,:artist,:genre)

  def initialize
    @name = name
    @artist = artist
    @genre = genre
  end

  def genre=(genre)
    @genre = genre
    genre.songs << self
  end

end