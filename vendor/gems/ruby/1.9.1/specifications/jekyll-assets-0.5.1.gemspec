# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "jekyll-assets"
  s.version = "0.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Aleksey V Zapparov"]
  s.date = "2013-05-13"
  s.description = "  Jekyll plugin, that allows you to write javascript/css assets in\n  other languages such as CoffeeScript, Sass, Less and ERB, concatenate\n  them, respecting dependencies, minify and many more.\n"
  s.email = ["ixti@member.fsf.org"]
  s.homepage = "http://ixti.github.com/jekyll-assets"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "jekyll-assets-0.5.1"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jekyll>, ["~> 1.0"])
      s.add_runtime_dependency(%q<sprockets>, ["~> 2.9"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<rb-inotify>, [">= 0"])
      s.add_development_dependency(%q<compass>, [">= 0"])
      s.add_development_dependency(%q<bourbon>, [">= 0"])
      s.add_development_dependency(%q<neat>, [">= 0"])
    else
      s.add_dependency(%q<jekyll>, ["~> 1.0"])
      s.add_dependency(%q<sprockets>, ["~> 2.9"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<rb-inotify>, [">= 0"])
      s.add_dependency(%q<compass>, [">= 0"])
      s.add_dependency(%q<bourbon>, [">= 0"])
      s.add_dependency(%q<neat>, [">= 0"])
    end
  else
    s.add_dependency(%q<jekyll>, ["~> 1.0"])
    s.add_dependency(%q<sprockets>, ["~> 2.9"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<rb-inotify>, [">= 0"])
    s.add_dependency(%q<compass>, [">= 0"])
    s.add_dependency(%q<bourbon>, [">= 0"])
    s.add_dependency(%q<neat>, [">= 0"])
  end
end
