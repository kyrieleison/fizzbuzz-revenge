require 'commander'

describe Commander do
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

    context '1が入力された場合' do
      let(:input) { '1' }
      let(:runner) { Fizzbuzz }

      before { allow(runner).to receive(:run) }

      it do
        subject
        expect(output).to eq("メニューを入力してください\n")
        expect(runner).to have_received(:run)
      end
    end

    context '2が入力された場合' do
      let(:input) { '2' }
      let(:runner) { FizzbuzzRecorder }

      before { allow(runner).to receive(:all) }

      it do
        subject
        expect(output).to eq("メニューを入力してください\n")
        expect(runner).to have_received(:all)
      end
    end
  end
end
