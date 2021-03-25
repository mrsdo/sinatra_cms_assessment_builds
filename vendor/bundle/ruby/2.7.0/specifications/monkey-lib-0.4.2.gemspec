# -*- encoding: utf-8 -*-
# stub: monkey-lib 0.4.2 ruby lib

Gem::Specification.new do |s|
  s.name = "monkey-lib".freeze
  s.version = "0.4.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Konstantin Haase".freeze]
  s.date = "2010-05-31"
  s.description = "Making ruby extension frameworks pluggable.".freeze
  s.email = "konstantin.mailinglists@googlemail.com".freeze
  s.extra_rdoc_files = ["README.rdoc".freeze, "LICENSE".freeze, "lib/monkey/autoloader.rb".freeze, "lib/monkey/backend/active_support.rb".freeze, "lib/monkey/backend/backports.rb".freeze, "lib/monkey/backend/common/extract_options.rb".freeze, "lib/monkey/backend/common/parent.rb".freeze, "lib/monkey/backend/common/singleton_class.rb".freeze, "lib/monkey/backend/common/tap.rb".freeze, "lib/monkey/backend/extlib.rb".freeze, "lib/monkey/backend/facets.rb".freeze, "lib/monkey/backend.rb".freeze, "lib/monkey/engine.rb".freeze, "lib/monkey/ext/array.rb".freeze, "lib/monkey/ext/enumerable.rb".freeze, "lib/monkey/ext/file.rb".freeze, "lib/monkey/ext/module.rb".freeze, "lib/monkey/ext/object.rb".freeze, "lib/monkey/ext/pathname.rb".freeze, "lib/monkey/ext/string.rb".freeze, "lib/monkey/ext.rb".freeze, "lib/monkey/hash_fix.rb".freeze, "lib/monkey/version.rb".freeze, "lib/monkey-lib.rb".freeze, "lib/monkey.rb".freeze]
  s.files = ["LICENSE".freeze, "README.rdoc".freeze, "lib/monkey-lib.rb".freeze, "lib/monkey.rb".freeze, "lib/monkey/autoloader.rb".freeze, "lib/monkey/backend.rb".freeze, "lib/monkey/backend/active_support.rb".freeze, "lib/monkey/backend/backports.rb".freeze, "lib/monkey/backend/common/extract_options.rb".freeze, "lib/monkey/backend/common/parent.rb".freeze, "lib/monkey/backend/common/singleton_class.rb".freeze, "lib/monkey/backend/common/tap.rb".freeze, "lib/monkey/backend/extlib.rb".freeze, "lib/monkey/backend/facets.rb".freeze, "lib/monkey/engine.rb".freeze, "lib/monkey/ext.rb".freeze, "lib/monkey/ext/array.rb".freeze, "lib/monkey/ext/enumerable.rb".freeze, "lib/monkey/ext/file.rb".freeze, "lib/monkey/ext/module.rb".freeze, "lib/monkey/ext/object.rb".freeze, "lib/monkey/ext/pathname.rb".freeze, "lib/monkey/ext/string.rb".freeze, "lib/monkey/hash_fix.rb".freeze, "lib/monkey/version.rb".freeze]
  s.homepage = "http://github.com/rkh/monkey-lib".freeze
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Making ruby extension frameworks pluggable.".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<backports>.freeze, [">= 0"])
  else
    s.add_dependency(%q<backports>.freeze, [">= 0"])
  end
end
