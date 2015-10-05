#The Always Three Game (refactored) 9/18/2015 Rabelle.Rouser

puts "\nGive me a Number"
my_num = gets.to_i

def always_3(passed_num)

puts "As always, the final number is #{((passed_num + 5)*2-4)/2 - passed_num}"
end

always_3 (my_num)