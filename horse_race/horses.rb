class Horse
	attr_accessor :name
	attr_accessor :speed
	@@list_of_horses = []

	def initialize 
		self.name = "Horse"
		self.speed = 15
		Horse.list_of_horses.push(self)
	end

	def display_information
		"#{self.name} #{self.speed}"
	end

	def self.display_all_horses
	end

	def self.list_of_horses
		@@list_of_horses
	end



end

horse1 = Horse.new
horse1.name = "Phar Lap"
horse1.speed = 10

horse2 = Horse.new
horse2.name = "War Admiral"
horse2.speed = 5

horse3 = Horse.new
horse3.name = "Smarty Jones"
horse3.speed = 3

horse4 = Horse.new
horse4.speed = 20

p Horse.list_of_horses