# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'amaoto/version'

Gem::Specification.new do |spec|

  spec.name          = "amaoto"
  spec.version       = Amaoto::VERSION
  spec.authors       = ["takkii"]
  spec.email         = ["karuma.reason@gmail.com"]
  spec.summary       = %q{Zinbei and Zinbeijett Clone made in JRuby.}
  spec.description   = %q{JRuby on Amaoto, Not yet another RubyShell.}
  spec.homepage      = "https://github.com/takkii/amaoto"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = ["amadare","raindrop","amaoto"]
  spec.require_paths = ["lib"]

end
