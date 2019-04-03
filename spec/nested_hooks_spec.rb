RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'Before outer context'
  end

  before(:example) do
    puts 'Before outer example'
  end

  it 'does basic math' do
    expect(1+1).to eq 2
  end

  context 'with condition a' do
    before(:context) do
      puts 'Before inner context'
    end
  
    before(:example) do
      puts 'Before inner example'
    end

    it 'does some more basic math' do 
      expect(1+1).to eq(2)
    end

    it 'does subtrction as well' do
      expect(3-1).to eq 2
    end
  end
end