# 1) Create a loop that implements "while" and "until"

puts "This is the 'while' loop\n\n"

a = 0
b = 10
while a < b
	puts "#{a} is lesser than #{b}"
	a += 1
end

puts "This is the 'Until' loop\n\n"

until a == 0 do
	puts "Now, a is #{a}"
	a -= 1
end

	# 2) Create a loop that is "nested" inside another loop
	# 3) Implement "next in your nested inner lop". We use the next keyword to skip over the current iteration of the llop and go on the next loop.

puts "\n\n\n"

puts "nested loop"

c = 20

while a <= c
	while a < b
		a += 1
		next if a.even?
		puts "#{a} is less than #{b}, and #{c}"
	end

	while a == b
		puts "#{a} = #{b}, a is equal to b"
		a += 1
	end

	while a < c
		puts "#{a} is greater than #{b}, but lesser than #{c}"
		a += 1
	end
	break
end

puts "The final value of a is #{a}"
# 4) Raise an exception
def raise_exception
	begin
		raise 'An error has occured during the process'
		puts 'After the raise'

# 5) Show an example of using "begin/rescue"
	# We use one rescue clause to tell Ruby the types of exceptions we want to handle if an error occurs.
# 6) We use multiple rescue statements if the exceptions are not handled by one rescue, so it will trickle down to the next rescue.

	rescue 
		puts 'Rescued for the first time'

	rescue 
		puts 'Rescued for the second time'

	rescue 
		puts 'Rescued for the third time'
	end

# 7) Show an example of using "ensure", ensure is used to guarantee that some processing is done at the end of a block of code, 
#	 regardless of whether an exception was raised.

ensure puts "Ensure is ran"
end

raise_exception


