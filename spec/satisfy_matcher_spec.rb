# allows to check for custom conditions to be expected
RSpec.describe 'satisy matcher' do
  subject { 'racecars' }
  it 'is a palindrome' do
    expect(subject).to satisfy { |value| value == value.reverse }
  end

  it 'can expect a custom error message' do
    expect(subject).to satisfy('to be a palindrome') { |value| value == value.reverse }
  end
end