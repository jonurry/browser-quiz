require './lib/question.rb'

describe Question do
  let(:answers) { double :answers }
  subject(:question) { described_class.new(1, 'Q1', 1, answers) }

  describe '#initialize' do
    it 'should have an id' do
      expect(question.id).to eq 1
    end

    it 'should have a question' do
      expect(question.question).to eq 'Q1'
    end

    it 'should have a correct answer' do
      expect(question.correct_answer).to eq 1
    end

    it 'should have answers' do
      expect(question.answers).to be answers
    end
  end
end
