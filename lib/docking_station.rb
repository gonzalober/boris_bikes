class DockingStation
    def release_bike
        fail 'no bikes available' unless @bike
        @bike
    end
    
    def dock(bike)
        @bike = bike
    end
    attr_reader :bike
end

class Bike
    def working?
        true#"bike is working"
    end
end