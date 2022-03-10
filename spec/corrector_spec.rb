require './corrector'

describe Corrector do
  context 'Testing for Corrector class' do
    corrector = Corrector.new
    it 'should trim string to 10 length' do
      expect(corrector.correct_name('amkamwebavanger')).to eq 'Amkamwebav'
    end
  end
end
