require 'author.rb'

class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end #initialize

  def self.all
    @@all
  end #self.all

  def author_name
    self.author.name if self.author
  end #author_name

end #Post
