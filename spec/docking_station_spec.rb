require 'docking_station'

describe DockingStation do
  describe '#release_bike' do
    it 'raises error when there are no bikes available' do
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end
  end

   it "releases bike" do
      expect(subject).to respond_to :release_bike
   end

  it "check if there is a bike" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "releases working bike" do
    subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike).to be_working
  end

end
