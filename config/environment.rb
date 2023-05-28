require_relative '../lib/author'
require_relative  '../lib/magazine'
require_relative '../lib/article'

author = Author.new("John Doe")
magazine1 = Magazine.new("Fashion Weekly", "Fashion")
magazine2 = Magazine.new("Tech Today", "Technology")

author.add_article(magazine1, "Latest Fashion Trends")
author.add_article(magazine2, "The Future of Technology")
author.add_article(magazine1, "Fashion Tips")

puts "Author: #{author.name}"
puts "Author's Articles:"
author.articles.each { |article| puts "- #{article.title}" }

puts "\nAuthor's Magazines:"
author.magazines.each { |magazine| puts "- #{magazine.name}" }

puts "\nAuthor's Topic Areas:"
author.topic_areas.each { |topic| puts "- #{topic}" }

