require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


games = Magazine.new("Games", "entertainment")
sports = Magazine.new("Sports Illustrated", "entertainment")
newsweek = Magazine.new("Newsweek", "news")
time = Magazine.new("Time", "news")


joe = Author.new("Joe")
tim = Author.new("Tim")
mary = Author.new("Mary")

article_one = Article.new(joe, games, "article_one")
article_two = Article.new(tim, games, "article_two")
article_three = Article.new(mary, time, "article_three")
article_four = Article.new(joe, time,  "article_four")
article_five = Article.new(tim, games, "article_five")
article_six = Article.new(joe, sports, "article_six")

new_article1 = mary.add_article(sports, "article_seven")
new_article2 = tim.add_article(time, "article_eight")

Pry.start
