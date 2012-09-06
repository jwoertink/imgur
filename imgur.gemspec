# -*- encoding: utf-8 -*-
require File.expand_path('../lib/imgur/version', __FILE__)

Gem::Specification.new do |s|
  s.name = "imgur"
  s.version = Imgur::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["jdp", "vanntastic", 'jwoertink']
  s.homepage = "https://github.com/jwoertink/imgur"
  s.summary = %q{Ruby Wrapper for the Imgur image hosting service}
  s.description = %q{Imgur API Ruby Wrapper}

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency "curb"
  s.add_dependency "crack"

  s.add_development_dependency "bacon"
  s.add_development_dependency "yard"
  s.add_development_dependency "simplecov"
end