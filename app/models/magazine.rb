# + Magazine.all
#   + returns an array of all magazines
# + Magazine.find_by_name(name)
#   + given a string of magazine name, returns the first magazine that matches
# + Magazine#article_titles
#   + returns a list of the titles of all articles written for that magazine


class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
  	@@all
  end

  def self.find_by_name(name)
  	Magazine.all.select do |magazine|
  		magazine.name == name
  	end
  end

  def article_titles
  	my_article = Article.all.select do |article|
  		article.magazine == self
  		end
  		my_article.collect do |my_article|
  			my_article.title
  	end
  end

end
