# falsy values: false, nil
# truthy values: anything else
RSpec.describe 'be matchers' do
  it 'can be test for truthiness' do
    expect(true).to be_truthy
    expect(1).to be_truthy
    expect([]).to be_truthy
    expect(Object).to be_truthy
    expect(:symbol).to be_truthy
    expect(1..10).to be_truthy
  end

  it 'can be tested for falsiness' do
    expect(nil).to be_falsy
    expect(false).to be_falsy
  end

  it 'can test for nil' do
    expect(nil).to be_nil
    hash = { a:1, b: nil }
    expect(hash[:b]).to be_nil
  end
end