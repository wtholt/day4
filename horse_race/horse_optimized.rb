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
		"Name: #{self.name}, Speed: #{self.speed}, Icon: #{self.icon}"
	end

	def display_icon
		"#{self.icon}"
	end

	def move
		




	def self.list_of_horses
		@@list_of_horses
	end
end

horse1 = Horse.new
horse1.name = "Phar Lap"
horse1.speed = rand(5..10) + 1
horse1.icon = "@"

horse2 = Horse.new
horse2.name = "War Admiral"
horse2.speed = rand(5..10) + 3
horse2.icon = "#"

horse3 = Horse.new
horse3.name = "Smarty Jones"
horse3.speed = rand(5..10) + 5
horse3.icon = "$"

horse4 = Horse.new
horse4.name = "Seabiscuit"
horse4.speed = rand(10..15) + 5
horse4.icon = "%"

class Track
	attr_accessor :lane
	@@track = []

	def initialize
		self.lane = "Lane"
		Track.track.push(self)
	end

	def display_track
		"#{self.lane}"
	end

	def self.track
		@@track
	end
end

	

