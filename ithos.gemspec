# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ithos/version"

Gem::Specification.new do |spec|
  spec.name          = "ithos"
  spec.version       = Ithos::VERSION
  spec.authors       = ["Tony Arcieri"]
  spec.email         = ["bascule@gmail.com"]
  spec.summary       = "Ruby client library for the ithos directory server"
  spec.homepage      = "https://github.com/cryptosphere/ithos"

  spec.description   = <<-DESCRIPTION.strip.gsub(/\s+/, " ")
    Ruby client library for Ithos, a modern LDAP-like directory server with
    support for storing encrypted credentials.
  DESCRIPTION

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
end
