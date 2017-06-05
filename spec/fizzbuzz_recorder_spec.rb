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

  describe '.save' do
    let(:path) { './path/to/file' }
    let(:output) { $buffer.string }

    before do
      $buffer = StringIO.new
      allow(File).to receive(:open).with(path, 'w').and_yield($buffer)
    end

    it do
      recorder = FizzbuzzRecorder.new
      recorder.add(input: '3', output: 'Fizz')
      recorder.save(path)
      expect(output).to eq('input: 3, output: Fizz')
    end
  end

  describe '.load' do
    let(:path) { './path/to/file' }

    before do
      $buffer = StringIO.new
      allow(File).to receive(:open).with(path, 'w').and_yield($buffer)
      allow(File).to receive(:open).with(path, 'r').and_yield($buffer.string)
    end

    it do
      recorder = FizzbuzzRecorder.new
      recorder.add(input: '3', output: 'Fizz')
      recorder.save(path)
      expect(recorder.load(path)).to eq('input: 3, output: Fizz')
    end
  end
end
