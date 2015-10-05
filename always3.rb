#The Always Three Game (refactored) 9/18/2015 Rabelle.Rouser
def always_3

my_num ='', new_num =0
puts "\nGive me a Number".chomp; my_num = gets.to_i
puts "As always, the final number is #{((my_num + 5)*2-4)/2 - my_num}"
end

always_3