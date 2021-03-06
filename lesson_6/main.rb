require_relative 'wagon'
require_relative 'cargo_wagon'
require_relative 'passenger_wagon'
require_relative 'train'
require_relative 'cargo_train'
require_relative 'passenger_train'
require_relative 'station'
require_relative 'route'


station1 = Station.new("Суконная Слобода")
station2 = Station.new("Кремлевская")
station3 = Station.new("Приволжская")

train1 = CargoTrain.new(1)
wagon1 = CargoWagon.new(200)
wagon1.take(150)
p wagon1.free
wagon2 = CargoWagon.new(200)
train1.wagon_add(wagon1)
train1.wagon_add(wagon2)

train2 = PassengerTrain.new(2)
wagon3 = PassengerWagon.new(20)
wagon3.take(15)
p wagon3.free
wagon4 = PassengerWagon.new(12)
train2.wagon_add(wagon3)
train2.wagon_add(wagon4)

route1 = Route.new(station1, station2)
station1.train_arrival train1
station1.train_arrival train2
p station1.trains_list_type

station1.train_departure train1
p station1.trains_list_type

route1.insert_station(station3, 1)
route1.list

train1.add_route(route1)
train1.go_next_station
p train1.current_station
p train1.prev_station
p train1.next_station