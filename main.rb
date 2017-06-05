require './lib/fizzbuzz.rb'
require './lib/fizzbuzz_recorder.rb'

recorder = FizzbuzzRecorder.new
Fizzbuzz.run(recorder)

recorder.save('./tmp/output')
recorder.load('./tmp/output')
