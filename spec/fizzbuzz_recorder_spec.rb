require 'fizzbuzz_recorder'

describe FizzbuzzRecorder do
  describe '.add' do
    context 'Fizzbuzzが1回実施された場合' do
      it do
        recorder = FizzbuzzRecorder.new
        recorder.add(input: '3', output: 'Fizz')
        expect(recorder.all).to eq([{ input: '3', output: 'Fizz' }])
      end
    end

    context 'Fizzbuzzが2回実施された場合' do
      it do
        recorder = FizzbuzzRecorder.new
        recorder.add(input: '3', output: 'Fizz')
        recorder.add(input: '5', output: 'Buzz')
        expect(recorder.all).to eq([{ input: '3', output: 'Fizz' }, { input: '5', output: 'Buzz' }])
      end
    end
  end
end
