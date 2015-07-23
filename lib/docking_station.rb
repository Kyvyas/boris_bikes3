require_relative 'bike'

class DockingStation

DEFAULT_CAPACITY = 20



# attr_accessor :capacity => gives us the function of both the reader and the writer
attr_reader :capacity #=> it allows us to access method in irb and its called a getter method (or shortcut)
# attr_writer :capacity => its equivelant of a setter method, we set value using it.

  #def capacity=(number) #=> setter
  #  @capacity = number
  #end
  #
  #def capacity #=> getter
  #  @capacity
  #end


  def initialize
    @bike_array = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    if empty?
      fail 'No bikes available'
    else
      @bike_array.pop
    end
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
    @bike_array.size >= DEFAULT_CAPACITY
  end

end
