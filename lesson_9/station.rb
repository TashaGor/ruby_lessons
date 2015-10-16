class Station
	attr_reader :trains, :name
	@@station_list = []

	def initialize(name)
		@name = name
		validate!
		@trains = []
		@@station_list << self
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

	def self.all
		@@station_list
	end

	def valid?
		validate!
	rescue
		false
	end

	def manage_trains(&block)
		@trains.each do |train|
			block.call(train)
		end
	end

	protected

	def validate!
		raise ArgumentError, "Не указано имя станции" if @name.nil?
		true
	end
end