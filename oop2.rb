# oop.rb

class Pet 
	#attr_writer :pet_name, :owner_name
	#attr_reader :pet_name, :owner_name
	attr_accessor :pet_name, :owner_name
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
my_dog.pet_name= "Pippi"
dog_name = my_dog.pet_name

my_cat = Cat.new
my_cat.pet_name= "Kacie"
cat_name = my_cat.pet_name

my_lizard = Lizard.new
my_lizard.pet_name= "Sneaky"
lizard_name = my_lizard.pet_name

puts "#{cat_name} says #{my_cat.says}"
puts "#{dog_name} says #{my_dog.says}"
puts "#{lizard_name} says #{my_lizard.says}"

puts my_cat.inspect
puts my_dog.inspect
puts my_lizard.inspect

