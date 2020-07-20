require 'post.rb'

class Author

  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end #initialize

  def add_post(post)
    post.author = self
    @posts << post
  end #add_post

end #author