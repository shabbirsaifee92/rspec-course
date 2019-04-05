class Car
  def initialize(model)
    @model = model
  end
end

class Garage
  attr_reader :storage
  def initialize
    @storage = []
  end

  def add_to_collection(model)
    @storage << Car.new(model)
  end
end

RSpec.describe Garage do
  let(:car_double) { instance_double(Car) }
  
  before do
    allow(Car).to receive(:new).and_return(car_double)
  end

  it 'adds a car to its storage' do
    subject.add_to_collection('BMW')
    expect(Car).to have_received(:new).with('BMW')
    expect(subject.storage).to include(car_double)
    expect(subject.storage).to contain_exactly(car_double)
    expect{ subject.add_to_collection('Porche') }.to change{ subject.storage.length }.by(1)
  end
end