class DockingStation
    def release_bike
        Bike.new
    end
end

class Bike
    def working?
        puts "bike is working"
    end
end