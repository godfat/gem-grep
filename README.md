# gem-grep [![Build Status](https://secure.travis-ci.org/godfat/gem-grep.png?branch=master)](http://travis-ci.org/godfat/gem-grep)

by Lin Jen-Shin ([godfat](http://godfat.org))

## LINKS:

* [github](https://github.com/godfat/gem-grep)
* [rubygems](https://rubygems.org/gems/gem-grep)

## DESCRIPTION:

grep the gem for a given name or grep the file for a given require path.

Also checkout [gem-eit][].

[gem-eit]: https://github.com/godfat/gem-eit

## REQUIREMENTS:

* Tested with MRI (official CRuby), Rubinius and JRuby.
* [gem-path](https://github.com/godfat/gem-path)
* `grep` from shell, or set `$GEM_GREP` to `ag` (The Silver Searcher),
  `rg` (ripgrep) or other compatible command.

## INSTALLATION:

    gem install gem-grep

## SYNOPSIS:

Please set `$GEM_GREP` to the command you want to search sources.
By default it would pick `grep` if nothing is set. However we recommend
[rg][] if you have it installed.

Use `--` to pass arguments to `$GEM_GREP`, such as `--color`, `-E`, or `-A`.

Also checkout [gem.fish][] for [fish][] completion.

[rg]: https://github.com/BurntSushi/ripgrep
[gem.fish]: https://github.com/godfat/dev-tool/blob/master/.config/fish/completions/gem.fish
[fish]: http://fishshell.com/

### grep gem

    gem grep rib -- 'def test'
    # grep 'def test' -nR ~/.gem/ruby/2.0.0/gems/rib-1.0.0

    gem grep rib -- -E 'def \w{4}\b' -A 3 --color
    # grep -E 'def \w{4}\b' -A 3 --color -nR ~/.gem/ruby/2.0.0/gems/rib-1.0.0

### grep gem with specific version

    gem grep rib '<1' -- 'def test'
    # grep 'def test' -nR ~/.gem/ruby/2.0.0/gems/rib-0.9.9

    gem grep rib '~>0.8.2' -- 'def test'
    # grep 'def test' -nR ~/.gem/ruby/2.0.0/gems/rib-0.8.9

    gem grep rib 0.1.0 -- 'def test'
    # grep 'def test' -nR ~/.gem/ruby/2.0.0/gems/rib-0.1.0

### grep gem from a require path

    gem grep rib/config -- 'def test'
    # grep 'def test' -nR ~/.gem/ruby/2.0.0/gems/rib-1.0.0

### grep a file from a require path

    gem grep timeout -- class
    # grep class -nR /usr/lib/ruby/2.0.0/timeout.rb

## CONTRIBUTORS:

* Lin Jen-Shin (@godfat)

## LICENSE:

Apache License 2.0 (Apache-2.0)

Copyright (c) 2013-2017, Lin Jen-Shin (godfat)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

<http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
