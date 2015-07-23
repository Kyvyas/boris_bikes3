require_relative 'bike'

class DockingStation

  def initialize
    @bike_array = []
  end

  def release_bike
    if @bike_array.empty?
      fail 'No bikes available'
    else
      @bike_array.pop
    end
  end

  def dock(bike)
    if @bike_array.size >= 20
      fail 'Station is full'
    else
    @bike_array.push(bike)
    # use append later
    #push takes an argument as long as the method "dock" allows it to !
    end
  end
end
