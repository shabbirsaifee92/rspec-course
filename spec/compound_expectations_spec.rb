RSpec.describe 25 do
  it 'can be tested for multiple matchers' do
    # expect(subject).to be_odd
    # expect(subject).to satisfy('divisible by 5') { |num| num % 5 == 0} 
    expect(subject).to be_odd and satisfy('divisible by 5') { |num| num % 5 == 0} 
  end

  it { is_expected.to be > 20 and be_odd }
end

RSpec.describe 'caterpillar' do
  it 'supports multiple matchers on a single line' do
    expect(subject).to start_with('cat') and end_with('lar')
  end

  it { is_expected.to start_with 'ca' and end_with 'llar'}
end

RSpec.describe [:usa, :canada, :india] do
  it 'can check for multiple possibilities' do
    expect(subject.sample).to eq(:usa).or eq(:canada).or eq(:india)
  end
end