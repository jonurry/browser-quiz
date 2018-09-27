require './lib/question.rb'

describe Question do
  subject { described_class.new('Q1', 'A1', 'A2', 'A3', 1) }
  describe '#initialize' do
    it 'should have a question' do
      expect(subject.question).to eq 'Q1'
    end
    it 'should have a first answer' do
      expect(subject.answer_1).to eq 'A1'
    end
    it 'should have a second answer' do
      expect(subject.answer_2).to eq 'A2'
    end
    it 'should have a third answer' do
      expect(subject.answer_3).to eq 'A3'
    end
    it 'should have a correct answer' do
      expect(subject.correct_answer).to eq 1
    end
  end
end
