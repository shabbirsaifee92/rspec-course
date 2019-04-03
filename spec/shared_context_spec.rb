# Define these shared_context in helper files
RSpec.shared_context 'common' do
  before do
    @foods = []
  end
  def some_helper_method
    5
  end

  let(:some_variable) { [1, 2, 3] }
end

RSpec.describe 'first_example_group' do
  include_context 'common'

  it 'can user outsie instance variables' do
    expect(@foods.length).to eq 0
    @foods <<'sushi'
    expect(@foods.length).to eq 1
  end

  it 'can user instance variables across different examples' do
    expect(@foods.length).to eq 0
  end 

  it 'can user shared helper method' do
    expect(some_helper_method).to eq 5
  end
end

RSpec.describe 'second example in different file' do
  include_examples 'common'

  it 'can user shared let variables' do
    expect(some_variable).to eq( [1, 2, 3] )
  end
end
