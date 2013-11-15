# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap/datetimepicker/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "bootstrap-datetimepicker-rails"
  spec.version       = Bootstrap::Datetimepicker::Rails::VERSION
  spec.authors       = ["Hugh Kelsey"]
  spec.email         = ["hugh@45robots.com"]
  spec.description   = %q{An Asset Pipeline gem to wrap https://github.com/smalot/bootstrap-datetimepicker}
  spec.summary       = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
