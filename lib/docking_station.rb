class DockingStation
  def release_bike
    fail 'no bikes available' if @bikes.length == 0
    @bikes
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
    if (@bikes.length + 1) == 21
      fail 'Docking station is full'
      return true
    end
    return false
  end


end

class Bike
  def working?
    true
  end
end
