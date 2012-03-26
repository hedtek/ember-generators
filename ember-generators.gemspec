# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ember-generators/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["David Workman", "Hedtek Ltd."]
  gem.email         = ["gems@hedtek.com"]
  gem.description   = %q{Generators for working with ember.js in rails}
  gem.summary       = %q{A set of generators to ease the creation of files when using ember.js in rails}
  gem.homepage      = "https://github.com/hedtek/ember-generators"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "ember-generators"
  gem.require_paths = ["lib"]
  gem.version       = Ember::Generators::VERSION
  gem.add_dependency "rails", "~> 3.1"
  gem.add_dependency "ember-rails", "~> 0.2.4"
end
