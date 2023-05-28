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
  end
  
 
 magazine1 = Magazine.new("Fashion Weekly", "Fashion")
magazine2 = Magazine.new("Tech Today", "Technology")

puts magazine1.name      
puts magazine1.category

puts magazine2.name      
puts magazine2.category  

puts Magazine.all.inspect

