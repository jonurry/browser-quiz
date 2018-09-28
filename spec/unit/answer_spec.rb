require './lib/answer.rb'

describe Answer do
  describe 'initialize' do
    context 'with id' do
      let(:answer) { described_class.new(1, 'answer one', 51)}
      it 'should have an optional id' do
        expect(answer.id).to eq 51
      end

      it 'should have a number' do
        expect(answer.number).to eq 1
      end
  
      it 'should have an answer' do
        expect(answer.answer).to eq 'answer one'
      end
    end

    context 'no id' do
      let(:answer) { described_class.new(2, 'answer two')}
      it 'should have a nil id' do
        expect(answer.id).to be nil
      end

      it 'should have a number' do
        expect(answer.number).to eq 2
      end
  
      it 'should have an answer' do
        expect(answer.answer).to eq 'answer two'
      end
    end
  end
end
