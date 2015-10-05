#fizzbuzz.rb 9/21/2015 Rabelle.Rouser


i=1

while i <= 100 
	prt_string = ''
	if i%3 == 0
		prt_string = 'Fizz'
	end
	if i%5 == 0
		prt_string = prt_string.chomp + 'Buzz'
	end
	if prt_string.empty?
		puts i
	else
		puts prt_string
	end
	i += 1
	
end
