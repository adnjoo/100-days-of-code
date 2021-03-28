# 111 = 7 in binary
# you need 4 bits to store 8 ; 1000 = 8 in binary

# variables are pointers to physical space in memory
# https://launchschool.com/books/ruby/read/more_stuff#variables_as_pointers
a = "hi there"
b = a
a << ", Bob"

p a
p b

# .uniq removes duplicates

def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
p test(a)

# methods that end in ! indicate that the method will modify
# the object it's called on.

# blocks and procs
# A block consists of chunks of code; You invoke a block by using the yield statement.
# passing_block.rb
def take_block(&block)
  block.call
end

take_block do
  puts "Block being called"
end

# Procs are blocks that are wrapped in a proc object

# Exception handling is a specific process that deals with errors in a manageable and predictable way.

names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end

#divide.rb
def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts e.message
  end
end

puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)
