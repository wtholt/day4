require './horses.rb'

class Inventory
	attr_accessor :horse_data

	def initialize
		self.horse_data = [ ]
	end

	def add_horse *horse_list
		horse_list.each do |horse|
			new_horse = Horse.new
			new_horse.name = horse[:name]
			new_horse.speed = horse[:speed]
			self.horse_data.push(new_horse)
		end
	end
end

