class Route
  attr_reader :station_list

  def initialize(first_station, last_station)
    @first_station = first_station
    @last_station = last_station
    validate!
    @station_list = []
    @station_list[0] = first_station
    @station_list << last_station
  end

  def insert_station(station, index)
    raise "Станция уже была ранее добавлена" if @station_list.find {|st| st.name == station.name }
    raise "Передаваемый аргумент должен быть Station" if station.class != Station
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

	def valid?
		validate!
	rescue
		false
	end

	protected

	def validate!
		raise ArgumentError, "Не указана начальная станция маршрута" if @first_station.nil?
		raise ArgumentError, "Не указана конечная станция маршрута" if @last_station.nil?
		true
	end
end