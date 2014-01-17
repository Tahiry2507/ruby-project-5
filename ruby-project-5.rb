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
		puts "I am before the raise 1"
		raise 'An error has occured during the process'
		puts 'After the raise'
	rescue
		puts 'Rescued for the first time'
	end
end

raise_exception


# 5) Show an example of using "begin/rescue"
	# We use one rescue clause to tell Ruby the types of exceptions we want to handle if an error occurs.
# 6) We use multiple rescue statements if the exceptions are not handled by one rescue, so it will trickle down to the next rescue.

print "What is your name: "
a = gets.chomp
print "How old are you, #{a}? "
b = gets.chomp.to_i
print "What is your favorite number? "
c = gets.chomp.to_i

puts "\n\t##################################\n\n"

begin
	if a == ""
		raise
	else
		puts "Hello #{a}"
	end

	puts "#{b} divided by you #{c} is equal to #{b/c} :)"
rescue ZeroDivisionError
	puts "Please, pick another number other than 0"

rescue RuntimeError
	puts "Sorry, your name is missing"
ensure puts "Ensure is ran"
end

# 7) Show an example of using "ensure", ensure is used to guarantee that some processing is done at the end of a block of code, 
#	 regardless of whether an exception was raised.



# raise_exception


