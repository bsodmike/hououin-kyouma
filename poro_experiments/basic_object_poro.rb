require 'delegate'

class Decorator < BasicObject
  undef_method :==

  def initialize(decorated_object)
    @decorated_object = decorated_object
  end

  def method_missing(name, *args, &block)
    @decorated_object.send(name, *args, &block)
  end

  def some_decorator_method
    true
  end

end

class ObjectDecorator < Decorator
  # attr_reader
  def decorated_object
    @decorated_object
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
