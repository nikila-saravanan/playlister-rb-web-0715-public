require_relative 'spec_helper.rb'

describe "Song" do
  it "can initialize a song" do
     # implement this spec
    expect(Song.new).to be_an_instance_of(Song)
  end

  it "can have a name" do
     # implement this spec
    song = Song.new
    song.name = 'Hello'
    expect(song.name).to eq('Hello')
  end

  it "can have a genre" do
     song = Song.new
     song.name = "Shake It Off"
     song.genre = Genre.new.tap { |genre| genre.name = "pop" }
     expect(song.genre).to eq(song.genre)
   end

  it "has an artist" do
     # implement this spec
    song = Song.new
    song.artist = 'Zedd'
    expect(song.artist).to eq('Zedd')
  end
end
