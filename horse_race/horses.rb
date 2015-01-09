class Horse
	attr_accessor :name
	attr_accessor :speed
	attr_accessor :icon
	@@list_of_horses = []

	def initialize 
		self.name = "Horse"
		self.speed = 15
		self.icon = "."
		Horse.list_of_horses.push(self)
	end

	def display_information
		"Name:#{self.name}, Speed:#{self.speed}, Icon:#{self.icon}"
	end

	def display_icon
		"#{self.icon}"
	end

	def self.list_of_horses
		@@list_of_horses
	end

end

horse1 = Horse.new
horse1.name = "Phar Lap"
horse1.speed = 10
horse1.icon = "@"

horse2 = Horse.new
horse2.name = "War Admiral"
horse2.speed = 5
horse2.icon = "#"

horse3 = Horse.new
horse3.name = "Smarty Jones"
horse3.speed = 3
horse3.icon = "$"

horse4 = Horse.new
horse4.name = "Seabiscuit"
horse4.speed = 20
horse4.icon = "%"


class Track
	attr_accessor :lane
	@@lanes = []

	def initialize
		self.lane = "------------------------------------------------"
		Track.lanes.push(self)
	end

	def display_information
		"#{self.lane}"
	end

	def self.display_lanes
	end

	def self.lanes
		@@lanes
	end
end

lane1 = Track.new
lane1.lane = "-----------------------------------"
lane2 = Track.new
lane2.lane = "-----------------------------------"
lane3 = Track.new
lane3.lane = "-----------------------------------"
lane4 = Track.new
lane4.lane = "-----------------------------------"



puts "Welcome to the Charleston Horse Race!"
puts "Which horse would you like to back today?"
puts horse1.display_information
puts horse2.display_information
puts horse3.display_information
puts horse4.display_information
choice = gets.chomp
if choice == "phar lap"
	race = true
elsif choice == "war admiral"
	race = true
elsif choice == "smarty jones"
	race = true
else
	race = true
end

horse1_move = rand(10..15) + 1
horse2_move = rand(10..15) + 1
horse3_move = rand(10..20) + 1
horse4_move = rand(15..25) + 2


while race
	puts horse1.display_icon.rjust(horse1_move, '-')
	puts lane1.display_information
	puts horse2.display_icon.rjust(horse2_move, '-')
	puts lane2.display_information
	puts horse3.display_icon.rjust(horse3_move, '-')
	puts lane3.display_information
	puts horse4.display_icon.rjust(horse4_move, '-')
	puts lane4.display_information
	puts "Seabiscuit won!"
	race = false
end	

puts "Would you like to help Phar Lap win by giving him steroids?"
change = gets.chomp
if change == "yes"
	puts "Type cheat"
	cheat = gets.chomp

	if cheat == "cheat"
		race = true
		horse1_move = rand(25..30) + 5
		horse2_move = rand(5..10) + 5
		horse3_move = rand(5..10) + 5
		horse4_move = rand(5..10) +5

		while race
			puts horse1.display_icon.rjust(horse1_move, '-')
			puts lane1.display_information
			puts horse2.display_icon.rjust(horse2_move, '-')
			puts lane2.display_information
			puts horse3.display_icon.rjust(horse3_move, '-')
			puts lane3.display_information
			puts horse4.display_icon.rjust(horse4_move, '-')
			puts lane4.display_information
			puts "Phar Lap won!"
			race = false
	
		end
	end
end




