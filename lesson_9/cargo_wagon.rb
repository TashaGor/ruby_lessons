class CargoWagon < Wagon
  def initialize(max) 
    super(max, :cargo)
  end
end