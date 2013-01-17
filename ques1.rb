#1. Make a class named book with attributes id, price and name. 
#2. Set some default values for the price and name, id should increment from 0



class Book
 attr_accessor:book_name
 attr_accessor:price
	@@id=0
  def initialize(book_name="No Name",price=0)
  	@@id+=1
  	@book_name=book_name
    @price=price
  end
  #set book details
 def set_book(book_name,price)
  	@book_name=book_name
    @price=price
 end


 #display book details
  def print_book
    puts "Id : #{@@id}"
    puts "#{@book_name}"
    puts "#{@price}"

  end
  

end



book1=Book.new
book1.print_book

book2=Book.new
book2.book_name="Ruby"
book2.print_book