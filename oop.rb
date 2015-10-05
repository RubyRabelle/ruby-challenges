# oop.rb

class Pet 
	def set_name=(pet_name)
		@name = pet_name
	end	
	def get_name
		return @name	
	end
	def set_owner= (owner_name)
		@owner_name = owner_name
	end
	def get_owner
		return @owner_name
	end
end

class Cat < Pet
	def says
		return "meow meow"
	end	
end

class Dog < Pet
	def says
		return "woof woof"
	end
end

class Lizard < Pet
	def says
		return "meeeep"
	end
end

my_dog = Dog.new
my_dog.set_name= "Pippi"
dog_name = my_dog.get_name

my_cat = Cat.new
my_cat.set_name= "Kacie"
cat_name = my_cat.get_name

my_lizard = Lizard.new
my_lizard.set_name= "Sneaky"
lizard_name = my_lizard.get_name

puts "#{cat_name} says #{my_cat.says}"
puts "#{dog_name} says #{my_dog.says}"
puts "#{lizard_name} says #{my_lizard.says}"

puts my_cat.inspect
puts my_dog.inspect
puts my_lizard.inspect

