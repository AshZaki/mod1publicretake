# + Author.all
#   + should return all of the authors
# + Author#articles
#   + returns a list of articles the author has written
# + Author#magazines
#   + should return a list of magazines for which the author has written  
# + Author#add_article(title, magazine)
#   + given a title and a magazine, creates a new article and associates it with that author and that magazine.
# +  Author#find_specialties
#   + returns the categories of the magazines for which the author has written


class Author

  attr_accessor :name
  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
  	@@all
  end

  def articles
  	Article.all.select do |article|
  		article.author == self
  		end
  end

  def magazines
  	self.articles.collect do |article|
  		article.magazine
  	end
  end

  def add_article(magazine, title)
  	Article.new(self, magazine, title)
  end

  def find_specialties
  	my_catagory = []
  	self.magazines.select do |magazine|
  		my_catagory << magazine.category
  	end
  	return my_catagory
  end

end
