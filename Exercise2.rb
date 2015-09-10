$product_tax_free = [ "books", "medicine", "food" ]
class Tax
	attr_accessor :count, :product, :price
	def initialize(count,product,price)
		@count = count
		@product = product
		@price = price
	end
	def is_free_tax?
		$product_tax_free.each do |item|
			if @product.downcase.include? item
				return true
			end
		end
		false
	end
	def is_import_tax?
		if @product.downcase.include? "import"
			return true
		end
		false
	end
	def count_tax
		tax = 0
		tax += 0.1 if is_free_tax? == false
		tax += 0.05 if is_import_tax? == true
		tax
	end
	def count_price
		total_price = ((1 + count_tax ) * @count * @price).round(3) 
	end
	def to_s
		"Count: #{@count}, Product: #{product}, Total Price: #{count_price}"
	end
end
product_tax =  Tax.new(2, "book", 12)
puts  product_tax.to_s
