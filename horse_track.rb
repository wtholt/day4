require './horses.rb'
require './horse_inventory.rb'

horse_inventory = Inventory.new

horse1 = {
	name: "Phar Lap",
	speed: 10
}

horse2 = {
	name: "War Admiral",
	speed: 5
}

horse3 = {
	name: "Smarty Jones",
	speed: 3
}

horse4 = {
	name: "Seabiscuit",
	speed: 20
}

horse_inventory.add_horse(horse1, horse2, horse3, horse4)

@horse1 = "["
@horse2 = "#"
@horse3 = "<"
@horse4 = "H"

puts "Welcome to the Charleston Horse Race! Type start to progress: "
answer = gets.chomp
if answer == "start"

	puts "These are the four horses that will be racing today. You can inspect their respective names and speeds."
	p horse_inventory
	puts "Which horse would you like to bet on?"
	puts "Horse 1 is #{Horse.horses.inspect[0]}."
	puts "Horse 2 is #{Horse.horses.inspect[1]}."
	puts "Horse 3 is #{Horse.horses.inspect[2]}."
	puts "Horse 4 is #{Horse.horses.inspect[3]"
	
	bet = gets.chomp
	if bet == "horse 1"
		puts "Phar Lap is a good choice"
	elsif bet == "horse 2"
		puts "War Admiral is a legend"
	elsif bet == "horse 3"
		puts "Smarty Jones? He has a speed of 3? What're you thinking?"
	elsif bet == "horse 4"
		puts "The great Seabiscuit"
	else
		puts "I didn't catch that."
	end
		
end

puts "Type race to begin the race!"
race = gets.chomp
if race == "race"
	@racing = true
end


def horse_track horse1, horse2, horse3, horse4
	puts "#{@horse1}"
	puts "-------------------------------------------------------------------------------"
	puts "#{@horse2}"
	puts "-------------------------------------------------------------------------------"
	puts "#{@horse3}"
	puts "-------------------------------------------------------------------------------"
	puts "#{@horse4}"
	puts "-------------------------------------------------------------------------------"
	while @racing 
		@horse1
		@horse2
		@horse3
		@horse4
	end
		
end













horse_track @horse1, @horse2, @horse3, @horse4


