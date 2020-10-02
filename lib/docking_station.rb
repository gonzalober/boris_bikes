class DockingStation
    def release_bike
        fail 'no bikes available' if @bikes.length == 0
        @bikes
    end
    
    def initialize
        @bikes = []
    end

    def dock(bike)
        fail 'Docking station is full' if (@bikes.length + 1) == 21
        @bikes << bike
    end

    attr_reader :bikes
   
end

class Bike
    def working?
        true
    end
end