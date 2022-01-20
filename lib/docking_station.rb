require_relative 'bike'

class DockingStation
  attr_reader :bike

  def initialize
    @dock = []
  end

  def dock_bike(bike)
    @dock << bike
    "Bike docked!"
  end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end

end