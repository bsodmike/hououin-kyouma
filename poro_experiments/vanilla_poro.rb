require 'delegate'

class Presenter

  def initialize(obj)
    @obj = obj
  end

  def some_presenter_method
    true
  end

end

require 'benchmark'

obj = Object.new

puts "GC.stat prior #{GC.stat}"

time = Benchmark.realtime do
  1000000.times do 
    Presenter.new(obj)
  end
end

puts "Presenter.new(obj) * 1000000 times took #{time} millisecs"
puts "GC.stat after #{GC.stat}"
