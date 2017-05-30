require 'fizzbuzz'

describe Fizzbuzz do
  let(:output) { $stdout.string }

  before do
    $stdout = StringIO.new
  end

  it do
    Fizzbuzz.run
    expect(output).to eq("整数を入力してください\n")
  end
end
