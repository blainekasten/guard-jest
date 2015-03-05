# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/jest/version'

Gem::Specification.new do |spec|
  spec.name          = "guard-jest"
  spec.version       = Guard::Jest::VERSION
  spec.authors       = ["blainekasten"]
  spec.email         = ["blainekasten@gmail.com"]
  spec.summary       = %q{Guard plugin for jest test runner}
  spec.homepage      = "https://github.com/blainekasten/guard-jest"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency 'guard-compat', '~> 1.1'
end
