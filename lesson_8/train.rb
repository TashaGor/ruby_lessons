require_relative 'manufacturer'

class Train
	include Manufacturer
	attr_reader :num, :speed, :type
	@@train_list = []
	NUM_FORMAT = /^\w{3}-?\w{2}$/i

	def initialize(num, type)
		@num = num
		@wagons_list = []
		@speed = 0
		@type = type
		validate!
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
		raise "Тип поезда и вагона не совпадают" if @type != wagon.type
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

	def valid?
		validate!
	rescue
		false
	end

	protected

	def validate!
		raise ArgumentError, "Не указан номер поезда" if @num.nil?
		raise ArgumentError, "Не указан тип поезда" if @type.nil?
		raise ArgumentError, "Некорректный формат номера поезда" if @num !~ NUM_FORMAT
		raise "Поезд с таким номером уже существует" if Train.find(@num)
		raise ArgumentError, "Скорость не может быть отрицательной" if @speed < 0
		true
	end
end