# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "guard-jekyll"
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Haslem"]
  s.date = "2013-05-23"
  s.description = "guard file for jekyll"
  s.email = ["therabidbanana@gmail.com"]
  s.homepage = "http://davidhaslem.com"
  s.require_paths = ["lib"]
  s.rubyforge_project = "guard-jekyll"
  s.rubygems_version = "1.8.25"
  s.summary = "guard file for jekyll"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>, [">= 1.1.0"])
      s.add_runtime_dependency(%q<jekyll>, [">= 0"])
    else
      s.add_dependency(%q<guard>, [">= 1.1.0"])
      s.add_dependency(%q<jekyll>, [">= 0"])
    end
  else
    s.add_dependency(%q<guard>, [">= 1.1.0"])
    s.add_dependency(%q<jekyll>, [">= 0"])
  end
end
