require 'bike'

describe Bike do
  it "should check if bike is working" do
    expect(subject).to respond_to :working?
  end

  it "if it is really working" do
    bike = Bike.new
    expect(bike).to be_working     
  end
end
