RSpec.describe 'before and after hooks' do
  before(:context) do
    puts 'hola'
  end

  after(:context) do 
    puts 'bye'
  end

  it 'is just a random example' do
    expect(5+4).to eq(9)
  end

  it 'is just another random example' do
    expect(3-2).to eq(1)
  end
end