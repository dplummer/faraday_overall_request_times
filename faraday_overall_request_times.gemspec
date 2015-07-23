# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faraday/overall_request_times/version'

Gem::Specification.new do |spec|
  spec.name          = "faraday_overall_request_times"
  spec.version       = Faraday::OverallRequestTimes::VERSION
  spec.authors       = ["Donald Plummer"]
  spec.email         = ["donald.plummer@gmail.com"]

  spec.summary       = %q{Middleware for recording request times to remote services}
  spec.homepage      = "https://github.com/dplummer/faraday_overall_request_times"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 0.8.9"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
