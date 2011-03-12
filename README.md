# bagotrix (bag o' tricks)

    require 'bagotrix'
    Bagotrix.config :user => 'levity', :repo => 'bagotrix-repo', :verbose => true
    Bagotrix.load 'handy_little_script'

That will fetch `https://github.com/levity/bagotrix-repo/raw/master/handy_little_script.rb` and eval it. 

Think of this as "remote require". It's only for single-file snippets, however; for proper gems, there's Bundler and RVM and so on.

## Configuration

* `user` defaults to the value of `github.user` in your global git config.
* `repo` defaults to `bagotrix-repo`. (Suggestions for a better name are welcome.)
* `verbose` is false by default, and all it does at the moment is print out the URI being fetched.

## Contributing to bagotrix

* Send pull requests
* Suggest new features
* Argue loudly that this is an antipattern, is already implemented better somewhere else, etc.

## Copyright

Copyright (c) 2011 Lawrence Wang. See LICENSE.txt for further details.

