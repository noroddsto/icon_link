# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'icon_link/version'

Gem::Specification.new do |gem|
  gem.name          = "icon_link"
  gem.version       = IconLink::VERSION
  gem.authors       = ["NorOddSto"]
  gem.email         = ["oddgeir@kjorren.com"]
  gem.description   = %q{Adds view helper method that enables icon option for link_to and form_tag. Meant to be used with Font Awesome or Twitter Bootstrap. }
  gem.summary       = %q{Helper methods for adding icon to links and submit buttons}
  gem.homepage      = ""
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "capybara"
  gem.add_development_dependency('actionpack', '~> 3.0')
end
