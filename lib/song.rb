require 'artist.rb'
require 'pry'

class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    self.name = name
    @@all << self
  end #initialize

  def self.all
    @@all
  end #self.all

  def artist_name
    self.artist.name if self.artist
  end #artist

end #Song
