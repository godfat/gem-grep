# -*- encoding: utf-8 -*-
# stub: gem-grep 0.8.0 ruby lib

Gem::Specification.new do |s|
  s.name = "gem-grep".freeze
  s.version = "0.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Lin Jen-Shin (godfat)".freeze]
  s.date = "2017-09-11"
  s.description = "grep the gem for a given name or grep the file for a given require path.\n\nAlso checkout [gem-eit][].\n\n[gem-eit]: https://github.com/godfat/gem-eit".freeze
  s.email = ["godfat (XD) godfat.org".freeze]
  s.files = [
  ".gitignore".freeze,
  ".gitmodules".freeze,
  ".travis.yml".freeze,
  "CHANGES.md".freeze,
  "LICENSE".freeze,
  "README.md".freeze,
  "Rakefile".freeze,
  "gem-grep.gemspec".freeze,
  "lib/rubygems/commands/grep_command.rb".freeze,
  "lib/rubygems_plugin.rb".freeze,
  "task/README.md".freeze,
  "task/gemgem.rb".freeze]
  s.homepage = "https://github.com/godfat/gem-grep".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.13".freeze
  s.summary = "grep the gem for a given name or grep the file for a given require path.".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<gem-path>.freeze, [">= 0"])
    else
      s.add_dependency(%q<gem-path>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<gem-path>.freeze, [">= 0"])
  end
end
