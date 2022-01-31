require_relative '../corrector'

describe Corrector do
  context 'When passing a name' do
    corrector = Corrector.new
    it 'should return first letter capital' do
      expect(corrector.correct_name('surbhi')).to eq 'Surbhi'
    end

    it 'should return first 10 letter with first capital letter' do
      expect(corrector.correct_name('surbhijyothi')).to eq 'Surbhijyot'
    end
  end
end
