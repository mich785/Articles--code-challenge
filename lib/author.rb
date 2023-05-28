class Author
    attr_reader :name
    def initialize name 
        @name =name 
     end
     #returns an array of article instances written by the author
     def articles
        Article.all.select {|article|article.author == self}
     end
     # returns an array of magazine instances written by the author 
    def magazines
        articles.map {|article|article.magazine}.uniq
    end
    #creates a new article instance and assocites it with a magazine instance and the author
    def add_article(magazine, title)
        Article.new(self, magazine, title)
      end
    #returns an array of all categories author has contributed to
    def topic_areas
        magazines.map { |magazine| magazine.category }.uniq
    end   
 end 


