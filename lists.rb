# lists.rb
# learn list functions
##################

puts "Wait there's not 10 things in that list, let's fix that."

ten_things = "Apples Oranges Crows Telephone Light Sugar Bullhorn Pharaoh Flapjack Swords"

stuff = ten_things.split(' ')
more_stuff = %w(Day Night Song Frisbee Corn Banana Girl Boy)

while stuff.length != 14
	next_one = more_stuff.pop()
	puts "Adding: #{next_one}"
	stuff.push(next_one)
	puts "There's #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff.join(' ')
puts stuff.values_at(3,5).join('#')
