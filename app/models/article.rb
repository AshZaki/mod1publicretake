# + Article.all
#   + returns all of the articles
# + Article#author
#   + returns the author for that given article
# + Article#magazine
#   + returns the restaurant for that given article


class Article

	attr_reader :author, :magazine, :title

	@@all = []

	def initialize(author, magazine, title)
		@author = author
		@magazine = magazine
		@title = title
		@@all << self
	end

	def self.all
		@@all
	end

	# def author
	# 	@author
	# end

	# def magazine
	# 	@magazine
	# end

end
