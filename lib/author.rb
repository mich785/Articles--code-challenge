class Author
    attr_reader :name
    def initialize name 
        @name =name 
     end
 end 

 author = Author.new("John Doe")
puts author.name 
