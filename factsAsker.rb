# factsAsker.rb
# find age, height, and weight of user
# repeat it back to them
##############################

print "How old are you?\n"
age = gets.to_i()
print "How tall are you?\n" 
height = gets.to_i()
print "How much do you weigh?\n"
weight = gets.to_i()

puts "So, you're %d years old, %d tall, and %d heavy." % [age, height, weight]
