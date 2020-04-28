class Post

  @@all = []

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @@all << self

  def self.all
    @@all
  end

  # def author
  #
  # end
end
