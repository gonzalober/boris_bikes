class DockingStation
    def release_bike
        fail 'no bikes available' unless @bike
        @bike
    end
    
    def dock(bike)
        fail 'Docking station is full' if @bike
        @bike = bike
    end

    attr_reader :bike
   
end

class Bike
    def working?
        true
    end
end