RSpec.describe 'allow method review' do
  it 'can customize return value for methods on doubles' do
    calculator = double
    allow(calculator).to receive(:add).and_return(10)
    expect(calculator.add).to eq 10
  end

  it 'can customize return value for methods on a real object' do
    arr = [1, 2, 3]
    allow(arr).to receive(:sum).and_return(0)
    expect(arr.sum).to be_zero
    expect{ arr << 4}.to change{ arr.length }.from(3).to(4)
  end

  it 'can return multiple return values in sequence' do
    mock_array = double
    allow(mock_array).to receive(:pop).and_return(:c, :b, nil)
    expect(mock_array.pop).to eq(:c)
    expect(mock_array.pop).to eq :b
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to be_nil
  end
end