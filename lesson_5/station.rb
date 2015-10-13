class Station
	attr_reader :trains, :name

	def initialize(name)
		@name = name
		@trains = []
	end

	def train_arrival(train)
		@trains.push train
	end

	def train_departure(train)
		@trains.delete(train)
	end

	def trains_list_type
		trains_list = {}
    @trains.each do |train|
      trains_list[train.type] ||= 0
      trains_list[train.type] += 1
    end
    trains_list
	end
end

class Train
	attr_reader :num, :speed, :type

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
end

class Route
  attr_reader :station_list

  def initialize(first_station, last_station)
    @station_list = []
    @station_list[0] = first_station
    @station_list << last_station
  end

  def insert_station(station, index)
    @station_list.insert(index, station)
  end

  def remove_station(index)
    @station_list.delete_at(index)
  end

  def list
    @station_list.each do |station|
      p station.name
    end
  end
end

station1 = Station.new("Суконная Слобода")
station2 = Station.new("Кремлевская")
train1 = Train.new(1, "грузовой", 6)
train2 = Train.new(2, "пассажирский", 2)
train3 = Train.new(23, "пассажирский", 2)
train4 = Train.new(3, "пустой", 0)

station1.train_arrival train1
station1.train_arrival train2
station1.train_arrival train3
station1.train_arrival train4
p station1.trains_list_type

station1.train_departure train1
p station1.trains_list_type

route1 = Route.new(station1, station2)
station3 = Station.new("Приволжская")
route1.insert_station(station3, 1)
route1.list

train1.add_route(route1)
train1.go_next_station
p train1.current_station
p train1.prev_station
p train1.next_station

