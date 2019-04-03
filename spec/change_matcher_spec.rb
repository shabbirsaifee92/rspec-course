# real case scenario: when you want to check insert or delete is successfully performed on database
RSpec.describe 'change matchers' do

  subject { [1, 3, 5] }

  it 'checks that a method changes object state' do
    expect{ subject.push 5}.to change { subject.length}.from(3).to(4)
    expect { subject.push 4 }.to change { subject.length }.by(1)
  end

  it 'accepts negative arguments' do
    expect { subject.pop }.to change { subject.length }.from(3).to(2)
    expect { subject.pop }.to change { subject.length }.by(-1)
  end
end