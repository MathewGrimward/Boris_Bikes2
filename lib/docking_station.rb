require_relative 'bike'

class DockingStation
  attr_reader :bike

  def initialize
    @docked = []
  end

  def dock_bike(bike)
    @docked << bike
    "Bike docked!"
  end

  def release_bike
    fail 'No bikes available' unless 
    @bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end

end