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
    #returns an array of author instances wwho have written for the magazine
    def contributors
      Article.all.select { |article| article.magazine == self }
                  .map { |article| article.author }
    end

    #returns the first magazine object that matches the given magazine's name
    def self.find_by_name(name)
      @@all.find { |magazine| magazine.name == name }
    end

    #returns an array of strings of the titles of all articles written for the magazine
    def article_titles
        Article.all.select { |article| article.magazine == self }
                   .map {|article| article.title}
    end

    #returns an array of authors who have written more than 2 articles of the magazine
    def contributing_authors
        contributors.select { |author| author.articles.length > 2 }.uniq
    end 
  end
  