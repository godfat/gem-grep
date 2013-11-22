# gem-grep [![Build Status](https://secure.travis-ci.org/godfat/gem-grep.png?branch=master)](http://travis-ci.org/godfat/gem-grep)

by Lin Jen-Shin ([godfat](http://godfat.org))

## LINKS:

* [github](https://github.com/godfat/gem-grep)
* [rubygems](https://rubygems.org/gems/gem-grep)

## DESCRIPTION:

grep the gem for a given name or grep the file for a given require path.

Also checkout [gem-cd][], [gem-eit][].

[gem-cd]: https://github.com/godfat/gem-cd
[gem-eit]: https://github.com/godfat/gem-eit

## REQUIREMENTS:

* Tested with MRI (official CRuby) 1.9.3, 2.0.0, Rubinius and JRuby.
* [gem-path](https://github.com/godfat/gem-path)
* grep from shell

## INSTALLATION:

    gem install gem-grep

## SYNOPSIS:

Use `--` to pass arguments to `grep`, such as `--color`, `-E`, or `-A`.

### grep gem

    gem grep rib -- 'def test'
    # grep 'def test' -R ~/.gem/ruby/2.0.0/gems/rib-1.0.0

    gem grep rib -- -E 'def \w{4}\b' -A 3 --color
    # grep -E 'def \w{4}\b' -A 3 --color -R ~/.gem/ruby/2.0.0/gems/rib-1.0.0

### grep gem with specific version

    gem grep rib '<1' -- 'def test'
    # grep 'def test' -R ~/.gem/ruby/2.0.0/gems/rib-0.9.9

    gem grep rib '~>0.8.2' -- 'def test'
    # grep 'def test' -R ~/.gem/ruby/2.0.0/gems/rib-0.8.9

    gem grep rib 0.1.0 -- 'def test'
    # grep 'def test' -R ~/.gem/ruby/2.0.0/gems/rib-0.1.0

### grep gem from a require path

    gem grep rib/config -- 'def test'
    # grep 'def test' -R ~/.gem/ruby/2.0.0/gems/rib-1.0.0

### grep a file from a require path

    gem grep timeout -- class
    # grep class -R /usr/lib/ruby/2.0.0/timeout.rb

## CONTRIBUTORS:

* Lin Jen-Shin (@godfat)

## LICENSE:

Apache License 2.0

Copyright (c) 2013, Lin Jen-Shin (godfat)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

<http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
