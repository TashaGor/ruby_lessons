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