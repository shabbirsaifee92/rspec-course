RSpec.describe Array do

  it 'initial length of the Array should be 0' do
    expect(subject.length).to eq(0)
    subject << 1
    expect(subject.length).to eq 1
  end
end