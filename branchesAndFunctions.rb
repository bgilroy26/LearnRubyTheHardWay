# branchesAndFunctions.rb
# Here we go, this one looks tougher!
##############################

def prompt()
	print "> "
end

def gold_room()
	puts "This room is full of gold. How much do you take?"

	prompt; next_move = gets.chomp
	if next_move.to_i() > 0
		how_much = next_move.to_i()
	else
		dead("Man, learn to type a number.")
	end
	
	if how_much < 50
		puts "Now get out while the gettin' is good!"
		Process.exit(0)
	else
		dead("You greedy fool, WHARGARBLE RAOOWR!!\nThe Dragon!")
	end
end

def bear_room()
	puts <<BEARTIME
	There is a bear here.
	The bear has a bunch of honey.
	The fat bear is in front of another door.
	How are you going to move the bear?
BEARTIME

	bear_moved = false

	while true
		prompt; next_move = gets.chomp

		if next_move == "take honey"
			dead("The bear looks at you then slaps your face off.")
		elsif next_move == "taunt bear" and not bear_moved
			puts "The bear has moved from the door. You can go through it now."
			bear_moved = true
		elsif next_move == "taunt bear" and bear_moved
			dead("The bear gets pissed off and chews your leg off.")
		elsif next_move == "open door" and bear_moved
			gold_room()
		else
			puts "I have no idea what that means."
		end
	end
end

def cthulu_room()
	puts <<CTHULU
	Here You see the great evil Cthulu.
	He, it, whatever stares at you and you go insane.
	Do you flee for your life or eat your head?
CTHULU

	prompt; next_move = gets.chomp

	if next_move.include? "flee"
		start()
	elsif next_move.include? "head"
		dead("Well that was tasty!")
	else
		cthulu_room()
	end
end

def dead(why)
	puts "#{why}"
	Process.exit(0)
end

def start()
	puts <<STARTTEXT
	You are in a dark room.
	There is a door to your right and left
	Which one do you take?
STARTTEXT

	prompt; next_move = gets.chomp

	if next_move == "left"
		bear_room()
	elsif next_move == "right"
		cthulu_room()
	else
		dead("You stumble around the room until you starve.")
	end
end

start()
