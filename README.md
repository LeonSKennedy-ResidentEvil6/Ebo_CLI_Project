# News feed CLI App in Ruby

This news feed app is meant to search news articles from various sources on the Internet. In this app, a user can:

- Starts the app and is greeted with a list of options on the menu
- Search news articles by keyword in the title
- List articles with the keyword
- Select article and is shown the detail of that article
- Open an article's publisher's website
- Go back to menu
- Clear search result
- Search article again
- Exit the app

## Prerequisites

Ruby 2.5+ must be already installed:

- apt (Debian or Ubuntu)
$ sudo apt-get install ruby-full

yum (CentOS, Fedora, or RHEL)
$ sudo yum install ruby

snap (Ubuntu or other Linux distributions)
$ sudo snap install ruby --classic

For more details on how to install Ruby, go to: https://www.ruby-lang.org/en/documentation/installation/

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ebo_cli_project'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ebo_cli_project

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/controller` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'leonskennedy'/ebo_cli_project. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the EboCliProject project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'leonskennedy'/ebo_cli_project/blob/master/CODE_OF_CONDUCT.md).
