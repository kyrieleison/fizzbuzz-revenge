require 'commander'

describe Commander do
  describe '#run' do
    let(:output) { $stdout.string }
    let(:input) { '1' }
    let(:runner) { Fizzbuzz }

    before do
      $stdin = StringIO.new(input)
      $stdout = StringIO.new
      allow(runner).to receive(:run)
    end

    after do
      $stdin = STDIN
      $stdout = STDOUT
    end

    it do
      described_class.run
      expect(output).to eq("メニューを入力してください\n")
      expect(runner).to have_received(:run)
    end
  end
end
