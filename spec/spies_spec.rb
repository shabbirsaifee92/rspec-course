# NOTE: spies assert the message after the fact/after the message has been invoked
# whereas double asserts the expectation before the message is invoked

RSpec.describe 'spies' do
  let(:mock_animal) { spy('animal') }

  it 'confirm that a message has been received' do
    mock_animal.eat_food
    expect(mock_animal).to have_received(:eat_food)
    expect(mock_animal).not_to have_received(:eat_human)
  end

  it 'resets between examples' do
    expect(mock_animal).not_to have_received(:eat_food)
  end

  it 'retains the same functionality of a regular double' do
    expect(mock_animal).to receive(:eat_food)
    mock_animal.eat_food
  end
end