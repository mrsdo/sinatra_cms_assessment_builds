# -*- encoding: utf-8 -*-
# stub: sinatra-sugar 0.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "sinatra-sugar".freeze
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Konstantin Haase".freeze]
  s.date = "2010-04-16"
  s.description = "Some extensions to the sinatra default behavior (usefull for other Sintatra extensions, part of BigBand).".freeze
  s.email = "konstantin.mailinglists@googlemail.com".freeze
  s.homepage = "http://github.com/rkh/sinatra-sugar".freeze
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Some extensions to the sinatra default behavior (usefull for other Sintatra extensions, part of BigBand).".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<monkey-lib>.freeze, ["~> 0.4.0"])
    s.add_development_dependency(%q<sinatra-test-helper>.freeze, ["~> 0.4.0"])
    s.add_runtime_dependency(%q<sinatra>.freeze, [">= 0.9.4"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 1.3.0"])
  else
    s.add_dependency(%q<monkey-lib>.freeze, ["~> 0.4.0"])
    s.add_dependency(%q<sinatra-test-helper>.freeze, ["~> 0.4.0"])
    s.add_dependency(%q<sinatra>.freeze, [">= 0.9.4"])
    s.add_dependency(%q<rspec>.freeze, [">= 1.3.0"])
  end
end
