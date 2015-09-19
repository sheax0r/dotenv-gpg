# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dotenv/gpg/version'

Gem::Specification.new do |spec|
  spec.name          = "dotenv-gpg"
  spec.version       = Dotenv::Gpg::VERSION
  spec.authors       = ["Mike Shea"]
  spec.email         = ["mike.shea@gmail.com"]

  spec.summary       = %q{Lets dotenv read from .gpg.env files}
  spec.description   = %q{Lets dotenv read from .gpg.env files}
  spec.homepage      = "http://github.com/sheax0r/dotenv-gpg"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
