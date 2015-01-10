class Horse
	attr_accessor :name
	attr_accessor :number
	attr_accessor :position
	attr_accessor :icon

	def initialize
		self.name = "Horse"
		self.number = 0
		self.position = 0.0
	end

	def full_name
		self.name + " " + self.icon
	end

	def move_forward
		self.position = self.position + rand(1..6)
	end

	def move_slower
		self.position = self.position + rand(1..5)
	end

	def move_faster
		self.position = self.position + rand(3..7)
	end



end

class Track
	attr_accessor :horses
	attr_accessor :name

	def initialize
		self.horses = []
	end
end

horse1 = Horse.new
horse1.name = "Phar Lap"
horse1.number = "1"
horse1.position = 0
horse1.icon = "@"

horse2 = Horse.new
horse2.name = "Jose Canseco"
horse2.number = "2"
horse2.position = 0
horse2.icon = "#"

horse3 = Horse.new
horse3.name = "Smarty Jones"
horse3.number = "3"
horse3.position = 0
horse3.icon = "$"

horse4 = Horse.new
horse4.name = "Seabiscuit"
horse4.number = "4"
horse4.position = 0
horse4.icon = "%"

track = Track.new
track.name = "Charleston Horse Race"
track.horses.push(horse1, horse2, horse3, horse4)



game_on = true

puts "Type r to begin racing"
racing = gets.chomp
if racing == 'r'
	while game_on
		print track.horses[0].full_name
		puts track.horses[0].move_forward
		print track.horses[1].full_name
		puts track.horses[1].move_slower
		print track.horses[2].full_name
		puts track.horses[2].move_forward
		print track.horses[3].full_name
		puts track.horses[3].move_forward

		sleep(1)

		if horse1.position > 100
			puts "Phar Lap won!"
			game_on = false
		elsif horse2.position > 100
			puts "Jose Canseco won!"
			game_on = false
		elsif horse3.position > 100
			puts "Smarty Jones won!"
			game_on = false
		elsif horse4.position > 100
			puts "Seabiscuit won!"
			game_on = false
		end


	end
elsif racing == 'steroids'
	while game_on
		print track.horses[0].full_name
		puts track.horses[0].move_slower
		print track.horses[1].full_name
		puts track.horses[1].move_faster
		print track.horses[2].full_name
		puts track.horses[2].move_slower
		print track.horses[3].full_name
		puts track.horses[3].move_slower

		sleep(1)

		if horse1.position > 100
			puts "Phar Lap won!"
			game_on = false
		elsif horse2.position > 100
			puts "Jose Canseco won!"
			game_on = false
		elsif horse3.position > 100
			puts "Smarty Jones won!"
			game_on = false
		elsif horse4.position > 100
			puts "Seabiscuit won!"
			game_on = false
		end
	end

	
end




