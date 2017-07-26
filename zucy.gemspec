# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "zucy/version"

Gem::Specification.new do |spec|
  spec.name          = "zucy"
  spec.version       = Zucy::VERSION
  spec.authors       = ["andela-oadeniran"]
  spec.email         = ["oladipupo.adeniran@andela.com"]

  spec.summary       = "Awesome gem to rival rails"
  spec.homepage      = "https://github.com/andela-oadeniran/zucy_rails_gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = 'http://mygemserver.com'
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec', '~> 3.6'
  spec.add_development_dependency 'rack-test', '~> 0.6'

  spec.add_runtime_dependency 'rack', '~> 1.5'
  spec.add_runtime_dependency 'pry'
end
