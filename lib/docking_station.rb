class DockingStation
  DEFAULT_CAPACITY = 20
  def release_bike
    @bikes.pop
  end

  def initialize
    @bikes = []
  end

  def dock(bike)
    @bikes << bike
  end

  attr_reader :bikes
  
  private

  def full?
    if (@bikes.length) >= DEFAULT_CAPACITY
      fail 'Docking station is full'
      return true
    end
    return false
  end

  def empty?
    fail 'no bikes available' if @bikes.length == 0
  end

end

class Bike
  def working?
    true
  end
end
