RSpec.describe 'not_to method' do
  it 'checks for the inverse of a matcher' do
    expect(5).not_to eq 2
    expect(5).not_to be_even
    expect([1, 2, 4]).not_to equal([1, 2, 3])
    expect(1.0).not_to eql(3)
    expect(1).not_to be > 2
    expect(4).not_to be_falsy
    expect(nil).not_to be_truthy
    expect([1, 3]).not_to include(4)
    expect({a: 1, b: 2}).not_to include(:c)
    expect('hello').not_to start_with('ha')
    expect([1, 2]).not_to contain_exactly(1, 2, 3)
    expect { 11 / 3 }.not_to raise_error
    expect(1).not_to respond_to(:length)
    expect('racecars').not_to satisfy('as a palindrome'){ |value| value == value.reverse }
  end
end