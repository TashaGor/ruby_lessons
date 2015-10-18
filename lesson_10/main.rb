require_relative 'attribute_accessor.rb'

class Test
  extend AttributeAccessor

  attr_accessor_with_history :test, :test2

  strong_attr_accessor :bar, String
end

tester = Test.new
tester.test = "test1 1"
tester.test = "test1 2"
tester.test2 = 1
p tester.test_history

tester.bar = "sdsd"
p tester.bar
# tester.bar = 1
