class Horse
	attr_accessor :name
	attr_accessor :location

	def initialize
		self.name = "Horse"
		self.location = 0
	end

	def move_horses
		self.location += rand(1..5)
	end

	def display_track
		puts "#{self.location} #{self.name}"
		print '-' * self.location
	end

end

class Track
	attr_accessor :horses

	def initialize 
		self.horses = []
	end
	def display_horses
		horses.each do |horse|
			puts horse.display_track
		end
	end

	def display_derby
		puts '-' * 79
		self.display_horses
		puts '-' * 79
	end

	def move_all_horses
		horses.each do |horse|
			horse.move_horses
		end
	end
end

horse1 = Horse.new
horse1.name = "Phar Lap"

horse2 = Horse.new
horse2.name = "War Admiral"

horse3 = Horse.new
horse3.name = "Funny Cide"

horse4 = Horse.new
horse4.name = "Seabiscuit"

derby = Track.new

derby.horses.push(horse1, horse2, horse3, horse4)
puts "Start race!"
game_on = true
while game_on
	system("clear")
	derby.display_derby
	gets.chomp
	derby.move_all_horses
	derby.display_derby
end
