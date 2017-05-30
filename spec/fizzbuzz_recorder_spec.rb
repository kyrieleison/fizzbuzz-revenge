require 'fizzbuzz_recorder'

describe FizzbuzzRecorder do
  context 'Fizzbuzzが1回実施された場合' do
    it do
      recorder = FizzbuzzRecorder.new
      recorder.add(input: '3', output: 'Fizz')
      records = recorder.all
      expect(records).to eq([{ input: '3', output: 'Fizz' }])
    end
  end

  context 'Fizzbuzzが2回実施された場合' do
    it do
      recorder = FizzbuzzRecorder.new
      recorder.add(input: '3', output: 'Fizz')
      recorder.add(input: '5', output: 'Buzz')
      records = recorder.all
      expect(records).to eq([{ input: '3', output: 'Fizz' }, { input: '5', output: 'Buzz' }])
    end
  end
end
