class Book  #define the class
    attr_reader :author, :title, :count #can access these instance variables without @
    def initialize(author,title,count) #must provide these 3 when creating instance
      @author = author
      @title = title
      @count = count
    end
    def to_s #when calling puts, should be in this order"
      "author: #{author} title: #{title} count: #{count}"
    end
end
 
book_array = [] #3 objects in this array
book_array.push(Book.new("Beatrice Potter","Peter Rabbit",25))
book_array.push(Book.new("Henry Fielding","Tom Jones",12))
book_array.push(Book.new("Bob Woodward","All the President's Men",30))

def display(*data)
    puts data
end

display("Sorting alphabetically by author")
 
new_array = book_array.sort do |a,b| #this sorts eh array by author
    author1 = a.author.downcase
    author2 = b.author.downcase
    author1 <=> author2
    # if author1 > author2
    #   1
    # elsif author1 < author2
    #   -1
    # else
    #   0
    # end
end

display(new_array)

display("\n"+ "Sorting alphabetically by title")

new_array_title = book_array.sort do |a,b|
    title1 = a.title.downcase
    title2 = b.title.downcase
    title1 <=> title2
end

display(new_array_title[0].title, new_array_title[1].title, new_array_title[2].title)

display("\n"+ "Sorting numerically by copies")

new_array_count = book_array.sort do |a,b|
    count1 = a.count
    count2 = b.count
    count1 <=> count2
end

display(new_array_count[0].count, new_array_count[1].count, new_array_count[2].count)