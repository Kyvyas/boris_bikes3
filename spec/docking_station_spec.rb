require 'docking_station'

describe DockingStation do

  let(:broken_bike) {double(:broken_bike, {:working? => false })}

  describe '#release_bike' do
    it 'raises error when there are no bikes available' do
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end
  end

describe '#dock' do
  it 'raises an error when docking station is full' do
    subject.capacity.times{subject.dock(Bike.new)}
    expect{subject.dock(Bike.new)}.to raise_error 'Station is full'
    end
end
   it "releases bike" do
      expect(subject).to respond_to :release_bike
   end

  it "check if there is a bike" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "does not release broken bike" do
    # bike = Bike.new
    # bike.report_broken
    subject.dock(broken_bike)
    expect{subject.release_bike}.to raise_error 'No bikes available'
  end

it 'docking station has a default capacity' do
  expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
end

it "allows user to increase capacity" do
  expect(subject).to respond_to(:capacity)
end

end
