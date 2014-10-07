# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'app_stats/version'

Gem::Specification.new do |spec|
  spec.name          = "app_stats"
  spec.version       = AppStats::VERSION
  spec.authors       = ["Ryan LeViseur"]
  spec.email         = ["vidkun@vlfservices.com"]
  spec.summary       = "AppStats - A gem to get statistics for your rails app."
  spec.description   = "Uses shell commands to get stats about your rails app. Requires awk to be installed."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files       = Dir["{app,config,db,lib}/**/*", "LICENSE.txt", "Rakefile", "README.md"]
  spec.test_files  = Dir["test/**/*"]
  spec.require_paths = ["lib"]

  spec.add_dependency 'rails', '~> 4.1.5'
  spec.add_dependency 'kaminari'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec-rails', '3.1.0'
  spec.add_development_dependency 'pry-rails'
  spec.add_development_dependency 'pry-nav'
end
