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
	puts "Which horse would you like to bet on?"
	puts "Horse 1 is [ #{horse1.inspect}."
	puts "Horse 2 is # #{horse2.inspect}."
	puts "Horse 3 is < #{horse3.inspect}."
	puts "Horse 4 is H #{horse4.inspect}"
	
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
elsif race == "cheat"
	@racing_1 = false
	puts "All the Horses are dead!"
elsif race == "phar lap"
	@racing_2 = true
	
end


def horse_track horse1, horse2, horse3, horse4
	while @racing
		horse_race1 = 1 ** 2 + 10
		horse_race2 = 2 ** 2 + 5
		horse_race3 = 3 ** 2 + 3
		horse_race4 = 4 ** 2 + 20
		if horse_race4 <= 250
			@racing = false
			puts "Seabiscuit wins!"
		end
	while @racing_2
		horse_race1 = 4 ** 2 + 20
		horse_race2 = 2 ** 2 + 5
		horse_race3 = 3 ** 2 + 3
		horse_race4 = 1 ** 2 + 3
		if horse_race1 <= 250
			@racing = false
			puts "Phar Lap wins!"
		end




		puts "#{@horse1.rjust(horse_race1)}"
		puts "-------------------------------------------------------------------------------"
		puts "#{@horse2.rjust(horse_race2)}"
		puts "-------------------------------------------------------------------------------"
		puts "#{@horse3.rjust(horse_race3)}"
		puts "-------------------------------------------------------------------------------"
		puts "#{@horse4.rjust(horse_race4)}"
		puts "-------------------------------------------------------------------------------"
		end
	end

end

horse_track horse1, horse2, horse3, horse4





















