require './lib/quiz'

describe Quiz do
  let(:questions) { double :questions }
  subject(:quiz) { described_class.new(questions) }
  describe 'initialize' do
    it 'should have questions' do
      expect(quiz.questions).to be questions
    end
  end
end
