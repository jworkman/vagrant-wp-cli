# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-wp-cli/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-wp-cli"
  spec.version       = VagrantPlugins::WpCLI::VERSION
  spec.authors       = ["Justin Workman"]
  spec.email         = ["jworkmandevelopment@gmail.com"]
  spec.description   = %q{Enables the Wordpress CLI hook into Vagrant}
  spec.summary       = %q{Enables the Wordpress CLI hook into Vagrant}
  spec.homepage      = "https://github.com/jworkman/vagrant-wp-cli"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
