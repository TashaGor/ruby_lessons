require_relative 'manufacturer'

class Train
	include Manufacturer
	attr_reader :num, :speed, :type
	@@train_list = []

	def initialize(num, type)
		@num = num
		@wagons_list = []
		@speed = 0
		@type = type
		@@train_list << self
	end

	def speed=(speed)
		@speed = speed if speed <= 110
	end

	def speed_up
		self.speed = @speed + 10 if @speed <= 110
	end

	def speed_down
		self.speed = @speed - 10 if @speed  >= 10
	end

	def wagon_count
		@wagons_list.length
	end

	def wagon_add(wagon)
		if @speed == 0 && @type == wagon.type
			@wagons_list << wagon
			wagon.num = @wagons_list.length
		end
	end

	def wagon_remove(wagon)
		if @speed == 0
			@wagons_list = @wagons_list.delete_at(wagon.num - 1)
		end
	end

	def add_route(route)
		@station_list = route.station_list
		@current_station = 0
	end

	def go_next_station
		@current_station += 1 if @current_station < @station_list.count
	end

	def go_prev_station
		@current_station -= 1  if @current_station > 0
	end

	def current_station
		@station_list[@current_station]
	end

	def next_station
		@station_list[@current_station+1]
	end

	def prev_station
		@station_list[@current_station-1]
	end

	def self.find(num)
		@@train_list.find {|train| train.num == num }
	end
end