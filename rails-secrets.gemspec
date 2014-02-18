# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rails/secrets/version"

Gem::Specification.new do |gem|
  gem.name          = "rails-secrets"
  gem.version       = Rails::Secrets::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.authors       = ["Andrew White"]
  gem.email         = ["andyw@pixeltrix.co.uk"]
  gem.homepage      = "https://github.com/pixeltrix/rails-secrets"

  gem.summary       = %q{Rails 4.1 secrets.yml for Rails 4.0}
  gem.description   = %q{Rails::Secrets is a backport of Rails 4.1 secrets.yml to Rails 4.0}

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.required_ruby_version     = '>= 1.9.3'
  gem.required_rubygems_version = '>= 1.8.11'

  gem.add_runtime_dependency 'rails', ['>= 4.0.0', '<= 4.1.0']
end
