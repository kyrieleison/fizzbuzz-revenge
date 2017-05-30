class FizzbuzzRecorder
  def initialize
    @records = []
  end

  def add(input:, output:)
    @records.push(input: input, output: output)
  end

  def all
    @records
  end
end