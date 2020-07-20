require 'post.rb'

class Author

  attr_accessor :name

  def initialize(name)
    self.name = name
  end #initialize

  def posts
    Post.all.select {|post| post.author == self}
  end #posts

  def add_post(post)
    post.author = self
  end #add_post

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    add_post(post)
  end #add_post_by_name

  def self.post_count
    Post.all.count
  end #self.post_count

end #author
