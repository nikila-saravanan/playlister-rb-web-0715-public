# code artist here
require 'pry'
class Artist
  #class variables and methods
  @@all_artists = []

  def self.reset_artists
    @@all_artists.clear
  end

  def self.all
    @@all_artists
  end

  def self.count
    @@all_artists.length
  end

  #instance variables and methods

  attr_accessor(:name,:songs,:genres)

  def initialize
    @name = name
    @songs = []
    @@all_artists << self
    @genres = []
  end

  def add_song(song)
    @songs << song
    @genres << song.genre
    if song.genre
      song.genre.artists << self
    end
  end

end