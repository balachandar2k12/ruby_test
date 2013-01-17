#3. Make a module with a function to calculate the final sale price (price + price * sale_tax_percent) where sale_tax_percent is a constant
#4. call this function for all the book objects created

module Calculate

	SALE_TAX_PERCENT = 12.5

	def total_sale_price

		@sale_price = @price + @price*SALE_TAX_PERCENT

		return @sale_price

	end

end