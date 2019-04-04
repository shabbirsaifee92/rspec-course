class Actor
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def ready?
    sleep 3
    true
  end

  def act
    'I love you, baby!'
  end

  def fall_off_ladder
    "Call my agent! NO way!"
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor
  def initialize(actor)
    @actor = actor
  end
  
  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.light_on_fire
      actor.act
    end
  end
end

# actor = Actor.new 'Brad Pitt'
# movie = Movie.new actor
# movie.start_shooting

RSpec.describe Movie do
  let(:fake_actor) { double('Brad Pitt') }
  
  subject { described_class.new(fake_actor) }
  
  before do
    allow(fake_actor).to receive(:ready?).and_return true
    allow(fake_actor).to receive_messages(act: 'hello', fall_off_ladder: 'lets do it', light_on_fire: true)
  end
  
  describe '#start_shooting' do
    it 'expects actor to do 3 actions' do
      expect(fake_actor).to receive(:ready?)
      expect(fake_actor).to receive(:act)
      expect(fake_actor).to receive(:fall_off_ladder)
      expect(fake_actor).to receive(:light_on_fire)
      subject.start_shooting
    end

    it 'expects actor to act 2 times' do
      expect(fake_actor).to receive(:light_on_fire).once
      expect(fake_actor).to receive(:fall_off_ladder).at_most(1).times
      expect(fake_actor).to receive(:act).exactly(2).times
      
      subject.start_shooting
    end
  end
end