require 'pry'
class Author

attr_accessor :name

def initialize(name)
@name = name
@posts = []
end

def posts
  @posts
end

def add_post(title)
  @title = title
  @posts << title
  title.author = self
  # binding.pry
end

def add_post_by_title(title)
  post = Post.new(title)
  @posts << post
  post.author = self
end

def self.post_count
  Post.all.count
end
end
