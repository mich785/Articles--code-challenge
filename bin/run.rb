#!/usr/bin/env ruby 

require_relative '../config/environment'

# Creating instances of Author
author1 = Author.new("John Doe")
author2 = Author.new("Jane Smith")

# Creating instances of Magazine
magazine1 = Magazine.new("Fashion Weekly", "Fashion")
magazine2 = Magazine.new("Tech Today", "Technology")

# Creating instances of Article
article1 = Article.new(author1, magazine1, "Latest Fashion Trends")
article2 = Article.new(author2, magazine1, "Fashion Tips")
article3 = Article.new(author1, magazine2, "Tech Innovations")

# Testing Author methods
puts "Author: #{author1.name}"
puts "Articles:"
author1.articles.each { |article| puts "- #{article.title}" }
puts "Magazines:"
author1.magazines.each { |magazine| puts "- #{magazine.name}" }
puts "Topic Areas: #{author1.topic_areas}"

# Testing Magazine methods
puts "Magazine: #{magazine1.name}"
puts "Contributors:"
magazine1.contributors.each { |contributor| puts "- #{contributor.name}" }
puts "Article Titles:"
magazine1.article_titles.each { |title| puts "- #{title}" }
puts "Contributing Authors:"
magazine1.contributing_authors.each { |author| puts "- #{author.name}" }

# Testing Article methods
puts "Article: #{article1.title}"
puts "Author: #{article1.author.name}"
puts "Magazine: #{article1.magazine.name}"
