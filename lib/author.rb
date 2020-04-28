class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    Post.all.select{|post| post.artist == self}
  end

  # def add_post(post)
  #   post
  #
  # end
end
