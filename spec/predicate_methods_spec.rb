RSpec.describe 'predicate methods and predicate matchers' do

  it 'can be tested with plain Ruby methods' do
    result = 16 / 2
    expect(result.even?).to eq true
  end

  it 'can be tested with predicate matchers' do
    #  remove ? at the end of the predicate method and prefix with 'be'
    #  example: nil? ==> be_nil
    expect(16 / 2 ).to be_even
    expect(15).to be_odd
    expect(nil).to be_nil
    expect([]).to be_empty
  end
end