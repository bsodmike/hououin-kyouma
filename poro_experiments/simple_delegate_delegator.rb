require 'delegate'

class Decorator < SimpleDelegator
  def class
    __getobj__.class
  end
end

class ObjectDecorator < Decorator
  def some_decorator_method
    true
  end
end

require 'benchmark'

obj = Object.new

puts "GC.stat prior #{GC.stat}"

bo_time = Benchmark.realtime do
  1000000.times do 
    ObjectDecorator.new(obj)
  end
end

puts "Decorating an object 1000000 times took #{bo_time} millisecs"
puts "GC.stat after #{GC.stat}"
