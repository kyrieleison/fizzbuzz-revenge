class Fizzbuzz
  class << self
    def run(recorder)
      puts "整数を入力してください\n"

      input = gets.chomp

      if input =~ /\A[1-9][0-9]*\z/
        output = output_for_integer(input.to_i)
      else
        output = output_for_not_integer
      end

      puts output

      recorder.add(input: input, output: output)
    end

    private

    def output_for_integer(integer)
      if integer % 3 === 0 && integer % 5 === 0
        return 'FizzBuzz'
      elsif integer % 3 === 0
        return 'Fizz'
      elsif integer % 5 === 0
        return 'Buzz'
      else
        return integer.to_s
      end
    end

    def output_for_not_integer
      '整数ではありません'
    end
  end
end
