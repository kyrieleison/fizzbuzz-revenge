class FizzbuzzRecorder
  attr_accessor :records

  def initialize
    @records = []
  end

  def add(input:, output:)
    records.push(input: input, output: output)
  end

  def all
    records
  end

  def save(path)
    File.open(path, 'w') do |f|
      records.map do |r|
        f.write("input: #{r[:input]}, output: #{r[:output]}")
      end
    end
  end

  def load(path)
    File.open(path, 'r') do |f|
      f.each_line do |line|
        puts line
      end
    end
  end
end
