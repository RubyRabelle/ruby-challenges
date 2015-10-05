#numerology2.rb  9/20/2015 Rabelle.Rouser

#SkillCrush Numerology app2


def get_birthdate
	#ask user for birthdate mmddyyyy, return string
	puts "What is your birthdate in MMDDYYYY format?"
	str_birthdate = gets
end


def run_magic_on_number(str_number)
	#build an array, add birthdate numbers together
	i = 0
	temp_magic_number = 0
	num = str_number.length
	while i < num do
		#puts "Pass #{i} : the string is #{str_number} and the number is #{str_number[i]}"
		temp_magic_number += str_number[i].to_i
		i += 1
		#puts "The first magic number is :#{first_magic_number}"
		magic_number = temp_magic_number
	end
	#puts "temp_magic_number = #{magic_number}"
	check_magic_number (magic_number)
end

def check_magic_number(magic_number)
	#check to see if the number needs to be reduced again
	if magic_number > 9
		#puts "magic number is too high, lets reduce it"
		run_magic_on_number(magic_number.to_s)
	else
		display_numerology_message(magic_number)
	end
end


def display_numerology_message (the_number)
	puts "Number #{the_number}"
	
	puts case the_number
	when 1 
	"One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."

	when 2 
	"This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."

	when  3 
	"Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."

	when 4 
	"This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."

	when 5 
	"This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."

	when 6 
	"This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."

	when 7 
	"This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."

	when 8 
	"This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."

	when 9 
	"This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
		
	end
play_again{run_magic_on_number(get_birthdate)}
end
def play_again
	puts "Do you want to play again? Y/N"
	playtime = gets.downcase.chomp
	if playtime == 'y'
		puts "lets play again!"
		yield
	else
		puts "goodbye"
	end
end

run_magic_on_number(get_birthdate)







