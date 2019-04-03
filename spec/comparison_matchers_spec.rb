RSpec.describe 'comparison matcher' do
  it 'allows for comparison with build-in Ruby operators' do
    expect(10).to be > 5
    expect(8).to be < 15
    
    expect(1).to be >= 1
    expect(1).to be >= 0

    expect(1).to be <= 5
    expect(1).to be <= 1
  end

  describe 100 do
    it { is_expected.to be > 90 }
    it { is_expected.to be >= 100 }
    it { is_expected.to be < 500 }
  end
end