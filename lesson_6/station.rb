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