class Human
	attr_accessor :name, :age, :gender
	def  initialize(name, age, gender)
		@name = name
		@age = age
		@gender = gender
	end
	def to_s
		"Name: #{@name}, age: #{@age},gender: #{@gender}"
	end
end
def find_gender(array_human, gender)
	array_new = array_human.select { |human| human.gender.eql?  gender}
end
def find_age(array_human,age)
	array_human.select{ |human| human.age >= age}
end
array_human = Array.new
human = Human.new("phuc",23,"male")
array_human << human
human = Human.new("phuc1",23,"female")
array_human << human
human = Human.new("phuc2",12,"female")
array_human << human

array_gender = find_gender(array_human, "female")
array_age = find_age(array_gender,18)
puts array_age


# def  find_gender(array_human, gender)
# 	array_of_hash = [ ]
# 	array_human.each { |record| array_of_hash << {'name' => record[0], 'age' => record[1], 'gender' => record[2]} }
# 	array_gender = array_of_hash.select { |item| item["gender"] == gender }
# 	array_gender.each{ |human| p human.map{ |k,v| "#{k}: #{v}"}.join(" : ") }
# end
# find_gender([["phuc",23,"F"],["phuc1",16,"M"],["phuc2",10,"F"]], "M")
