#3. Make a module with a function to calculate the final sale price (price + price * sale_tax_percent) where sale_tax_percent is a constant
#4. call this function for all the book objects created
#5. If price of a given book is 0, catch the exception and prompt user to enter a new price and check again.
#6. Write a function to search a book with name and print the result
#7. Make a class edition that would inherit book and would have attribute - edition number.
#8. Make an interface where user can create as many editions until they want to exit, you should get edition number, price and name from the user.
#9 . print the books once user is done filling.
#10. namespace all class definitions.
#11. Perform the price check everytime you create a new edition.

require "/home/bala/Desktop/ruby/Calculate.rb"

@@all_books=[]
 module Books
 	class Book
 		include Calculate
 		attr_accessor:book_name
 		attr_accessor:price
		@@id=0
  		def initialize(book_name,price)
  		 @@id+=1
  		 @book_name=book_name
    	 @price=price
    	 @@all_books.push(@book_name)
    	 puts " new Book created ! #{@@id}, #{@book_name},#{@price} "
  		end
  
    end
end 	

 	
module Editions
	class Edition < Books::Book
     @edition_number

     def initialize(edition,price,name)
        @edition_number = edition
        super(name,price)
     end
     
    end
        
end


# search The Book
def search(search_name)
     @@all_books.each do |book|
        if book == search_name
          return "#{search_name}  is found!"
        end  
     end
  return "#{search_name} is not found!"
end

# User interface 

choice ="yes"
while choice =="yes" do

  puts "Enter the edition : "
  edi_no = Integer(gets.chomp)
  puts "Enter name of the book"
  bname = gets.chomp
  begin 
  	puts "Enter the price :"
  	bprice = Integer(gets.chomp)
     if bprice<=0 
     	raise TypeError.new(" Inavalid Price !")
     end	
  	edi = Editions::Edition.new(edi_no,bprice,bname)
  rescue Exception=>e
    retry
     end
    puts "Total Sales price : Rs. #{edi.total_sale_price}"
    puts edi.total_sale_price
    puts "Do you want to continue ? (yes/no)"
    choice = gets.chomp
 
end


def print_all_books
    @@all_books.each do |book1| 
    	puts book1
    end
end

puts "Books in Stock ! \n"
#printing all
print_all_books


#search a book

ch = "yes"

while ch == "yes" do
  puts "which book U wanna search ?"
  book = gets.chomp
  puts search(book)
  puts "Do you want to continue ? (y/n)"
  ch = gets.chomp
end

#namespacing demo

puts "Namespace access"
puts Calculate::SALE_TAX_PERCENT 