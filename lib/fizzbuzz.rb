class Fizzbuzz
  def self.run
    puts "整数を入力してください\n"

    input = gets.chomp

    unless input =~ /\A[1-9][0-9]*\z/
      puts '整数ではありません'
      return false
    end

    if input.to_i % 3 === 0
      puts 'Fizz'
    elsif input.to_i % 5 === 0
      puts 'Buzz'
    else
      puts input
    end
  end
end
