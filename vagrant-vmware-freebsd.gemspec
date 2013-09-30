# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "vagrant-vmware-freebsd"
  spec.version       = "1.0.0"
  spec.authors       = ["Geoff Garside"]
  spec.email         = ["geoff@geoffgarside.co.uk"]
  spec.description   = %q{Provides vagrant capabilities for VMware FreeBSD machines.}
  spec.summary       = %q{Vagrant VMware FreeBSD Capabilities}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
