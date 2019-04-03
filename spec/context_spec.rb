RSpec.describe '#even?' do
  context 'with even number' do
    let(:even) { 4 }
    it 'should return true' do 
      expect(even.even?).to eq(true)
    end
  end

  context 'with odd number' do 
    let(:odd) { 5 } 
    it 'should return false' do 
      expect(odd.even?).to eq(false)
    end
  end
end