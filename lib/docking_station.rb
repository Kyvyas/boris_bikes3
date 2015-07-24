require_relative 'bike'

class DockingStation

DEFAULT_CAPACITY = 20

attr_accessor :capacity 


  def initialize
    @bike_array = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    @current_working_bikes = @bike_array.select {|x| x.working?}
    fail 'No bikes available' if @current_working_bikes.empty?
    bike = current_working_bikes.pop
    @bike_array.delete (bike)
    bike
  end

  def dock(bike)
    if full?
      fail 'Station is full'
    else
    @bike_array.push(bike)
    # use append later
    #push takes an argument as long as the method "dock" allows it to !
    end
  end

private

  def empty?
    @bike_array.empty?
  end

  def full?
    @bike_array.size >= capacity
  end

end
