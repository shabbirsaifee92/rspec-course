RSpec.describe 'all matcher' do 
  it 'allows for aggregate checks' do
    expect([4, 6, 10]).to all(be_even)
    expect([nil, nil, nil]).to all(be_nil)
    expect([[], [], []]).to all(be_empty)
    expect([0, 0, 0]).to all(be_zero)
  end

  describe [1, 4, 6] do
    it { is_expected.to all(be < 10)}
  end
end