# -*- encoding: utf-8 -*-
# stub: gem-grep 0.6.1 ruby lib

Gem::Specification.new do |s|
  s.name = "gem-grep"
  s.version = "0.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Lin Jen-Shin (godfat)"]
  s.date = "2014-03-24"
  s.description = "grep the gem for a given name or grep the file for a given require path.\n\nAlso checkout [gem-eit][].\n\n[gem-eit]: https://github.com/godfat/gem-eit"
  s.email = ["godfat (XD) godfat.org"]
  s.files = [
  ".gitignore",
  ".gitmodules",
  ".travis.yml",
  "CHANGES.md",
  "LICENSE",
  "README.md",
  "Rakefile",
  "gem-grep.gemspec",
  "lib/rubygems/commands/grep_command.rb",
  "lib/rubygems_plugin.rb",
  "task/README.md",
  "task/gemgem.rb"]
  s.homepage = "https://github.com/godfat/gem-grep"
  s.licenses = ["Apache License 2.0"]
  s.rubygems_version = "2.2.2"
  s.summary = "grep the gem for a given name or grep the file for a given require path."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<gem-path>, [">= 0"])
    else
      s.add_dependency(%q<gem-path>, [">= 0"])
    end
  else
    s.add_dependency(%q<gem-path>, [">= 0"])
  end
end
