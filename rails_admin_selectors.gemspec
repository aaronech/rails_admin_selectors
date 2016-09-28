# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_admin_selectors/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_admin_selectors"
  spec.version       = RailsAdminSelectors::VERSION
  spec.authors       = ['Aaron Echard']
  spec.email         = ["aaronech1977@gmail.com"]

  spec.summary       = %q{This is gem for extending rails_admin with selectors}
  spec.description   = %q{This is gem for extending rails_admin with selectors}
  spec.homepage      = "http://www.rails-admin.org"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
