require 'benchmark'
require 'delegate'

bo_time = Benchmark.realtime do 
  100000.times do 
    BasicObject.new
  end
end

sd_time = Benchmark.realtime do 
  100000.times do
    SimpleDelegator.new([])
  end
end

class Something

end

n_time = Benchmark.realtime do
  100000.times do
    Something.new
  end
end

puts "Basic Object Time taken : #{bo_time * 1000}  millisecs"
puts "SimpleDelegator Time taken : #{sd_time * 1000}  millisecs"
puts "Object Time taken : #{n_time * 1000}  millisecs"
