#The Always Three Game 9/18/2015 Rabelle.Rouser
puts "\n\n\nWelcome to the 'Always Three' game!! \n"
should_we_loop = "Y" #initialize variable

#test for desire to play game again
while 
	should_we_loop.chomp == "Y" do 
		puts "\nGive me a Number".chomp
		my_input = gets
		my_num = my_input.to_i
		if my_num == 0 and my_input != "0"
			#they didn't enter a number
			puts "Thats not a number, try again."
		else
			new_num = my_num
			puts "\nYou started with: #{my_num}"
			new_num += 5
			puts "#{my_num} + 5 = #{new_num}"
			new_num *= 2
			puts "double it and you get #{new_num}"
			new_num -= 4
			puts "subtract 4 and you get #{new_num}"
			new_num /= 2 
			puts "divide by 2 and you get #{new_num}"

			final_num = new_num - my_num
			puts "subtract original number #{my_num}"

			puts "\nThe final number is:  #{final_num}!!"

			puts "\nWant to play again?  Y/N"
			should_we_loop = gets.upcase
			#puts "your answer was #{should_we_loop}"
		end
			
	end
puts "Okay, goodbye!"




