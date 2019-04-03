RSpec.describe 'not_to method' do
  it 'checks taht two values do not match' do
    expect(5).not_to eq 1
    expect('helo').not_to eq 'hello'
    expect([1, 2]).not_to eq([1, 2, 3])
  end
end