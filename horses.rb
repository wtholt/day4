class Horse
	attr_accessor :name
	attr_accessor :speed
	@@horses = []

	def initialize
		self.name = "Funny Cide"
		self.speed = 15
		Horse.horses.push(self)
	end

	def display_information
		"#{self.name} #{self.speed}"
	end

	def self.display_all_horses
	end

	def self.horses
		@@horses
	end

end

