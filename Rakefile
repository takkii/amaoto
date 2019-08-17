# frozen_string_literal: true

# bundle exec
require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

# rspec
require 'rake'
require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :default => :spec

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "zinbeijett #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
  rdoc.options = ["--charset", "utf-8", "--line-numbers"]
end

# unit_test
require 'rake/testtask'

task :default => [:test]
Rake::TestTask.new do |test|
  test.test_files = Dir['test/**/test_*.rb']
  test.verbose = true
end

# mini_test
require 'rake/testtask'

task :default => [:test]
Rake::TestTask.new do |mini_test|
  mini_test.test_files = Dir['mini_test/**/mini_test_*.rb']
  mini_test.verbose = true
end
