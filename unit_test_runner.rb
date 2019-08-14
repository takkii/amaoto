# frozen_string_literal: true

require 'test/unit'

puts ''
puts ' ./test in filename list...start! '.center(60, '-')
puts ''

# Class file loads.
class Filename
  def find
    puts Dir.glob('./test/*.rb')
  end
end

Filename.new.find

puts ''
puts ' ./test in filename list...exit. '.center(60, '-')
puts ''

puts ''
puts ' Test All Start '.center(60, '-')
puts ''

# Module file loads.
module TestOne
  module_function

  def for_all
    Test::Unit::AutoRunner.run(true, './test')
  end
end

TestOne.for_all

puts ''
puts ' Test All End '.center(60, '-')
puts ''
