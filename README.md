# VimPlugin

The `vim_plugin` application will allow the user to create a Vim Pathogen 
Plugin directory structure for vim plugin authoring.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'vim_plugin', git: 'https://github.com/predatorian3/vim_plugin'
```

And then execute:

```bash
bundle install
bundle exec rake install:local
```

## Usage

Simply fire up a terminal and exceute the `vim-plugin` command, and 
let [Thor](http://whatisthor.com) do its magic.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run 
`rake test` to run the tests. You can also run `bin/console` for an 
interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To 
release a new version, update the version number in `version.rb`, and then run 
`bundle exec rake release`, which will create a git tag for the version, push 
git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/predatorian3/vim_plugin. 
This project is intended to be a safe, welcoming space for collaboration, and 
contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) 
code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the VimPlugin project’s codebases, issue trackers, 
chat rooms and mailing lists is expected to follow the 
[code of conduct](https://github.com/predatorian3/vim_plugin/blob/master/CODE_OF_CONDUCT.md).

# References

* [VimCasts - Vim 8 Packaging](http://vimcasts.org/episodes/packages/)
* [Vim 8 Package Docs](https://github.com/vim/vim/blob/master/runtime/doc/repeat.txt#L494)
* [Pathogen Plugin Manager](https://github.com/tpope/vim-pathogen)
* [Learn Vimscript the Hard Way](http://learnvimscriptthehardway.stevelosh.com)
