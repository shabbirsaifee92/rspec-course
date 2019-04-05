class Deck
  def self.build
    # some logic to build a bunch of cards
  end
end

class CardGame 
  attr_reader :cards
  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'can only implement class methods tht are defined on a class' do
    deck_double = class_double(Deck).as_stubbed_const
    allow(deck_double).to receive(:build).and_return([1, 2, 3])
    
    
    expect(deck_double).to receive(:build)
    subject.start
    expect(subject.cards).to contain_exactly(1, 3, 2)
  end
end