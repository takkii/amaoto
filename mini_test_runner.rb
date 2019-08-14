# frozen_string_literal: true

require 'rubygems'
require 'minitest'
require 'minitest/autorun'
require 'minitest/unit'
require 'minitest/reporters'

Encoding.default_internal = 'UTF-8'

# Ruby test file.
module MiniTestOne
  module_function

  def mini_test
    Dir[File.dirname(__FILE__) + '/mini_test/*.rb'].each do |file|
      require file
    end
  end
end

# Ruby file find
class MiniFilename
  def mini_find
    puts Dir.glob('./mini_test/*.rb')
  end
end

# Super Class
class MiniFile < MiniFilename
  include MiniTestOne

  def enter
    mini_test
  end
end

puts ''
puts ' mini_test in filename list ... start '.center(80, '~')
puts ''
MiniFile.new.mini_find
puts ''
puts ' mini_test in filename list ... end '.center(80, '~')
puts ''
MiniFile.new.enter
puts ''

__END__
