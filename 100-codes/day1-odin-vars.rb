# learning outcomes
# learning objectives: Describe what a variable is and how to assign it a value or expression.
# Explain what the +=, -=, *=, and /= assignment operators do.
# Describe the naming conventions for variables.

# notes
puts 'hi im andrew'
age = 18
# snake_case andrew_njoo etc_etc
age_tom = 55

#assignment 1: read variables chapter https://launchschool.com/books/ruby/read/variables
# gets to get string
# name = gets.chomp
# .chomp to remove carriage return characters at end
# puts name
# variable scope determines where in a program a var is avail to use
# block {} || do/end

arr = [1, 2, 3]

for i in arr do
  a = 5      # a is initialized here
end

puts a       # is it accessible here?
# yes because for... do/end did not create a new inner scope

=begin
5 types of variables:
constants,
global variables,
class variables,
instance variables,
and local variables
=end

MY_CONSTANT = 100
p MY_CONSTANT
MY_CONSTANT = 1000
# throws notification

#global variables are used everywhere
$var = "use me everywhere"

#class vars are declared with two @ signs
@@instances = 0

#instance vars are declared with one @ sign
@var2 = 'dog'

#local var
var3 = 'cat'

#ex1: name
puts "what's your name?"
name = gets.chomp
puts 'hello ' + name
#ex2: age
puts 'How old are you?'
age = gets.chomp.to_i
puts 'In 10 years you will be: ' + (age+10).to_s
puts 'In 20 years you will be: ' + (age+20).to_s
puts 'In 30 years you will be: ' + (age+30).to_s
puts 'In 40 years you will be: ' + (age+40).to_s
#ex3 10x
puts "what's your name?"
name = gets.chomp
10.times {p name}
#ex4 fn ln
puts "what's your first name?"
fn = gets.chomp
puts "what's your last name?"
ln = gets.chomp
puts "your name is " + fn + " " + ln
#ex5 quiz
#1st prints 3
#2nd prints error because x is local scope var

# assignment 2: rubymonstas
# name = thing
# var = 10

# assignment 3: repl.it - ok

#additional rsrcs - bastard ok; in ruby vars are referred to as pointers and references

#vars as pointers -> not done

#
# Knowledge Check
# This section contains questions for you to check your understanding of this lesson. If you’re having trouble answering the questions below on your own, review the material above to find the answer.
#
# What is a variable? vars are memory locations that hold any data to be used in a program.
# How do you assign a value or an expression to a variable?
# using = sign
# What does the += assignment operator do?
# increment by RHS
# What does the -= assignment operator do?
# decrement by RHS
# What does the *= assignment operator do?
# multiply by RHS
# What does the /= assignment operator do?
# divide by RHS
# What are the variable naming conventions?
# snake_case or camelCase for better readability of source code
