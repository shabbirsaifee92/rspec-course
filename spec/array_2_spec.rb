RSpec.describe Array do
  subject(:sally) { [1,2] }

  it 'can add remove elements' do
    expect(sally.length).to eq 2
    sally.pop
    expect(sally.length).to eq 1
  end

  it 'has defualt length of 2' do
    expect(sally.length).to eq 2
  end
end