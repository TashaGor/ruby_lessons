class Station
	def initialize(name)
		@name = name
		@trains = []
	end

	def trains
		@trains
	end

	def train_arrival(train)
		@trains.push train.num
	end

	def train_departure(train)
		@trains.delete(train.num)
	end
end

class Train
	attr_reader :num, :speed

	def initialize(num, type, wagon_count)
		@num = num
		@type = type
		@wagon_count = wagon_count
		@speed = 0
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
		@wagon_count
	end

	def wagon_count=(wagon_count)
		@wagon_count = wagon_count
	end

	def wagon_count_up
		self.wagon_count = @wagon_count + 1 if @speed == 0
	end

	def wagon_count_down
		self.wagon_count = @wagon_count - 1 if @speed == 0
	end
end


=begin
station1 = Station.new("Суконная Слобода")
train1 = Train.new(1, "грузовой", 6)

train2 = Train.new(2, "пассажирский", 2)
train2.wagon_count_down
train2.speed = 120
p train2.speed

train7 = Train.new(7, "грузовой", 9)

station1.train_arrival train1
station1.train_arrival train2
p station1.trains
station1.train_departure train1
p station1.trains=end

