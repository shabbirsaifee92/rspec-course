# allows us to check if an object includes something else
RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it 'checks for substring inclusion' do
      expect(subject).to include('ot ch')
      expect(subject).to include('late')
      expect(subject).to include('hot')
      expect(subject).to include('choco', 'hot')
    end

    it  {is_expected.to include('hot') }
  end

  describe [10, 30, 40] do
    it 'checks if array has an expected element' do
      expect(subject).to include(30)
      expect(subject).to include(40, 10)
    end
  end

  describe ({ a: 1, b: 2 }) do
    it 'can check for key existence' do
      expect(subject).to include(:a)
      expect(subject).to include(:b, :a)
    end

    it 'can check for key-value pair' do
      expect(subject).to include(b: 2)
      expect(subject).to include(b: 2, a: 1)
    end

    it { is_expected.to include(a: 1) }
  end
end