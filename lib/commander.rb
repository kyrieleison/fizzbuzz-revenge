require 'fizzbuzz'

class Commander
  def self.run
    puts 'メニューを入力してください'

    input = gets.chomp

    if (input == '1')
      Fizzbuzz.run
    end
  end
end
