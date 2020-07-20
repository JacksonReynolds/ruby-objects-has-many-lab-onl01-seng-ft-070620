require 'song.rb'
require 'pry'

class Artist

  attr_accessor :name

  def initialize(name)
    self.name = name
  end #initialize

  def songs
    Song.all.select {|song| song.artist == self}
  end #songs

  def add_song(song)
    song.artist = self
  end #add_song

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.add_song(song)
  end #add_song_by_name

  def self.song_count
    Song.all.count
  end #song_count

end #Artist
