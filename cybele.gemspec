# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require File.expand_path('../lib/cybele/version', __FILE__)
require 'date'

Gem::Specification.new do |spec|
  spec.required_ruby_version = ">= #{Cybele::RUBY_VERSION}"

  spec.name           = 'cybele'
  spec.version        = Cybele::VERSION
  spec.authors        = %w[lab2023]
  spec.email          = %w[info@lab2023.com]
  spec.description    = %q{Rails 4.x template with responder, simple form, haml, exception notification, etc etc ...}
  spec.summary        = %q{Rails 4.x template with responder, simple form, haml, exception notification, etc etc ...}
  spec.homepage       = 'https://github.com/kebab-project/cybele'
  spec.license        = 'MIT'
  spec.date           = Date.today.strftime('%Y-%m-%d')
  spec.files          = `git ls-files`.split($/)
  spec.executables    = %w[cybele]
  spec.test_files     = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths  = %w[lib]

  spec.add_development_dependency 'rake'
  spec.add_dependency 'bundler', '~> 1.5'
  spec.add_dependency 'rails', Cybele::RAILS_VERSION

  spec.extra_rdoc_files = %w[README.md MIT-LICENSE]
end
