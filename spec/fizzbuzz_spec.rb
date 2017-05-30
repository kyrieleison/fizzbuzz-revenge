require 'fizzbuzz'

describe Fizzbuzz do
  describe '#run' do
    subject { described_class.run(recorder) }

    let(:output) { $stdout.string }
    let(:recorder) { spy(:recorder) }

    before do
      $stdin = StringIO.new(input)
      $stdout = StringIO.new
      allow(recorder).to receive(:add)
    end

    after do
      $stdin = STDIN
      $stdout = STDOUT
    end

    context '3の倍数の場合' do
      let(:input) { '3' }

      it do
        subject
        expect(output).to eq("整数を入力してください\nFizz\n")
        expect(recorder).to have_received(:add).with(input: '3', output: 'Fizz')
      end
    end

    context '5の倍数の場合' do
      let(:input) { '5' }

      it do
        subject
        expect(output).to eq("整数を入力してください\nBuzz\n")
        expect(recorder).to have_received(:add).with(input: '5', output: 'Buzz')
      end
    end

    context '15の倍数の場合' do
      let(:input) { '15' }

      it do
        subject
        expect(output).to eq("整数を入力してください\nFizzBuzz\n")
        expect(recorder).to have_received(:add).with(input: '15', output: 'FizzBuzz')
      end
    end

    context 'それ以外の整数の場合' do
      let(:input) { '1' }

      it do
        subject
        expect(output).to eq("整数を入力してください\n1\n")
        expect(recorder).to have_received(:add).with(input: '1', output: '1')
      end
    end

    context '整数でない場合' do
      let(:input) { 'NOT_INTEGER' }

      it do
        subject
        expect(output).to eq("整数を入力してください\n整数ではありません\n")
        expect(recorder).to have_received(:add).with(input: 'NOT_INTEGER', output: '整数ではありません')
      end
    end
  end
end
