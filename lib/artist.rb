# require "pry"
class Artist
  #artist class must be initialized with a name
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self #takes the song.artist and points it to this instance of the song
  end

  def add_song_by_name(title)
    song = Song.new(title)
    add_song(song)
  end

  def song_count
    Song.all.count
  end

end
# binding.pry
