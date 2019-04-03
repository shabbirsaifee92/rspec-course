RSpec.describe 'start_with and end_with matchers' do 
  describe 'caterpillar' do
    it 'should check for substring at the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('lar')
    end

    it { is_expected.to start_with 'ca' }
    it { is_expected.to end_with('llar') }
  end

  describe [:a, :b , :c] do
    it 'should check elements at the beginning or end of the array' do
      expect(subject).to start_with(:a, :b)
      expect(subject).to start_with(:a)
      expect(subject).to end_with(:c)
      expect(subject).to end_with(:b, :c)
    end

    it { is_expected.to start_with(:a, :b) }
    it { is_expected.to end_with(:b, :c) }
  end
end