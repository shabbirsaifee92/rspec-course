RSpec.describe Hash do
  it 'should start up empty' do
    expect(subject.length).to eq 0
    subject[:key] = 'value'
    puts subject.class
    puts subject
  end

  it 'is isolated between example' do
    expect(subject).to eq({})
    puts subject
  end

end