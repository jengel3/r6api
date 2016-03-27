# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'r6api/version'

Gem::Specification.new do |spec|
  spec.name          = "r6api"
  spec.version       = R6api::VERSION
  spec.authors       = ["Jake0oo0"]
  spec.email         = ["jake0oo0dev@gmail.com"]

  spec.summary       = %q{Client for the Rainbow 6: Siege limited API}
  spec.description   = %q{Client for the Rainbow 6: Siege limited API}
  spec.license       = "MIT"
  spec.homepage      = "https://github.com/Jake0oo0/r6api"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "httparty", "~> 0.13.7"
end
