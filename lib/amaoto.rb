# frozen_string_literal: true

require 'kconv'
require 'timeout'

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

class Raining
  attr_accessor :version, :versions

  def initialize(version, versions)
    @version = version, @versions = versions
  end
end

class Amaoto
  def baketu
    require_relative 'amaoto/mizore'
  end

  def rain
    require_relative 'amaoto/andif'
  end

  def noanbre
    require_relative 'amaoto/noticall'
  end

  def unbre
    require_relative 'amaoto/orange'
  end
end

one = ARGV[0]

z = /\A[-][z]\z/
a = /\A[-][a]\z/
n = /\A[-][n]\z/
o = /\A[-][o]\z/

if one.nil?
  amehuri = Raining.new('~ zinbeijett clone amaoto engine ~', '> * 1.0.2.2')
  puts amehuri.version
elsif one.match?(z)
  Amaoto.new.baketu
elsif one.match?(a)
  Amaoto.new.rain
elsif one.match?(n)
  Amaoto.new.noanbre
elsif one.match?(o)
  Amaoto.new.unbre
else
  puts 'Please choose an option.'
end

__END__
