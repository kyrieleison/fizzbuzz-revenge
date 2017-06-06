require 'fizzbuzz'
require 'fizzbuzz_recorder'

class Commander
  def self.run
    puts 'メニューを入力してください'

    input = gets.chomp

    if input == '1'
      Fizzbuzz.run
    else
      FizzbuzzRecorder.all
    end
  end
end
