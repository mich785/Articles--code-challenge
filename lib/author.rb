class Author
    attr_reader :name
    def initialize name 
        @name =name 
     end

     def articles
        Article.all.select {|article|article.author == self}
     end

     
 end 

 author = Author.new("John Doe")
puts author.name 
