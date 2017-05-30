require 'fizzbuzz'

describe Fizzbuzz do
  describe '#run' do
    subject { described_class.run }

    let(:output) { $stdout.string }

    before do
      $stdin = StringIO.new(input)
      $stdout = StringIO.new
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
      end
    end

    context '5の倍数の場合' do
      let(:input) { '5' }

      it do
        subject
        expect(output).to eq("整数を入力してください\nBuzz\n")
      end
    end

    context 'それ以外の整数の場合' do
      let(:input) { '1' }

      it do
        subject
        expect(output).to eq("整数を入力してください\n1\n")
      end
    end

    context '整数でない場合' do
      let(:input) { 'NOT_INTEGER' }

      it do
        subject
        expect(output).to eq("整数を入力してください\n整数ではありません\n")
      end
    end
  end
end
