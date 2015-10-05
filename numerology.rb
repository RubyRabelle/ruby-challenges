#numerology.rb  9/18/2015 Rabelle.Rouser

#SkillCrush Numerology app 


#ask user for birthdate mmddyyyy
puts "What is your birthdate in MMDDYYYY format?"

str_birthdate = gets
str_number = str_birthdate [0,8]
#puts str_number
i = 0
magic_number = 0
first_magic_number = 0
second_magic_number = 0
third_magic_number = 0



#build an array, add birthdate numbers together
while i < 8 do
	#puts "Pass #{i} : the string is #{str_number} and the number is #{str_number[i]}"
	first_magic_number += str_number[i].to_i
	i += 1
	#puts "The first magic number is :#{first_magic_number}"
end

magic_number = first_magic_number

#check to see if the number is larger than 9 and needs to be reduced
if first_magic_number > 9
	#puts "need to recalculate the magic number"
	#puts "The str_number is #{first_magic_number.to_s}"
	str_number = first_magic_number.to_s

	second_magic_number = str_number[0].to_i + str_number[1].to_i + str_number[2].to_i

	#puts "The second magic number is #{second_magic_number}"
	magic_number = second_magic_number
end

#check again to see if the number is still larger than 9 and needs reduced again
if second_magic_number > 9
	#puts "need to recalculate the magic number"
	#puts "The str_number is #{second_magic_number.to_s}"
	str_number = second_magic_number.to_s

	third_magic_number = str_number[0].to_i + str_number[1].to_i + str_number[2].to_i

	#puts "The third magic number is #{third_magic_number}"
	magic_number = third_magic_number
end

#puts "The final magic number is: #{magic_number}!"

puts case magic_number
when 1 
"Number 1

One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."

when 2 
"Number 2

This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."

when  3 
"Number 3

Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."

when 4 
"Number 4
This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."

when 5 
"Number 5

This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."

when 6 
"Number 6

This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."

when 7 
"Number 7

This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."

when 8 
	"Number 8

This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."

when 9 
"Number 9

This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."

	
end




