#love.rb

my_family =[ "Dave", "Tommy",
	"Sarah",
	"Michael",
	"Nicholas",
	"Pippi",
	"Duchess",
	"Kacie",
	"Maury"
]

person_or_pet = 0
total_loved_ones = my_family.size

while person_or_pet < total_loved_ones
	puts "<3 <3 <3 "
	puts my_family
	person_or_pet += 1
end

my_family.each do |lovey|
	puts "I love my #{lovey} <3 <3 <3!!"
end