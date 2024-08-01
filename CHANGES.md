# CHANGES

## gem-grep 1.0.0 -- 2024-08-01

* Fixed for newer RubyGems

## gem-grep 0.8.0 -- 2017-09-11

* Update signature of `grep_command` and `capture_path`.
  Reverse for `grep_command` so that it's easier to extend for
  `gem-bgrep`. Since this changed a public API, a major version
  bump is needed.

## gem-grep 0.7.0 -- 2017-07-29

* Support and recommend ripgrep (rg)
* Try to show the command more faithfully by quoting and escaping arguments

## gem-grep 0.6.2 -- 2014-03-24

* Introduce method `grep_command` to make gem-grep more modular and therefore
  make gem-bgrep easier to reuse codes in gem-grep.

## gem-grep 0.6.1 -- 2014-03-24

* Fixed gem command description.
* Moved CapturedUI under Gem::Commands::GrepCommand.

## gem-grep 0.6.0 -- 2013-11-26

* Accept `$GEM_GREP` for the grep command. Recommend [ag][].
* Also pass -n (--line-number) to the grep command.

[ag]: https://github.com/ggreer/the_silver_searcher

## gem-grep 0.5.1 -- 2013-11-22

* Showed the grep command.

## gem-grep 0.5.0 -- 2013-11-22

* Birthday!
