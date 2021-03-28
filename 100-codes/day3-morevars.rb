# launchschool vars
# q1
def method (word)
  if word.include?('lab')
    return word
  end
end

arr = []
arr<< "laboratory"
arr<< "experiment"
arr<< "Pans Labyrinth"
arr<< "elaborate"
arr<< "polar bear"

arr.each do |x|
  p method(x)
end

# q2
def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# nothing runs unless you use .call method

# q3 - ex. handling -> handling errors by changing flow of control

# bastards: bar = chicken
# x = 142
# 100 and 100
# alpha = star; beta = STAR

#this is tricky
bob = "uncle-"
earth = bob
earth << bob
p bob
p earth
#earth = uncle-uncle-
mary = bob.downcase + earth.upcase! + bob.capitalize
# uncle-uncle- UNCLE-UNCLE- Uncle-uncle-
earth << bob


p bob
p earth
p mary

p '---'
bob = "uncle-"
earth = 'uncle-'
earth << bob
p bob
p earth
#earth = uncle-uncle-
mary = bob.downcase + earth.upcase! + bob.capitalize
# uncle- UNCLE-UNCLE- Uncle-
earth << bob

p bob
p earth
p mary

a = 42
b = 3
a = b - a
b = b - a
a = b + a

p b
p a

# ruby style guide https://github.com/rubocop/ruby-style-guide

#
# Learning Outcomes
# By the end of this lesson, you should be able to do the following:
#
# Differentiate between the print and puts commands.
# puts appends a new line, print keeps things on the same line.
# Describe the method used to get input from the user.
