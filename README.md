# Gyazby

[![Circle CI](https://circleci.com/gh/yutakakinjyo/gyazby.svg?style=svg)](https://circleci.com/gh/yutakakinjyo/gyazby)

Gyazo API Wrapper in ruby.  

`Gyazo + ruby = Gyazby :-) have fun.`

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gyazby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gyazby

## Usage

### Client

Client need gyazo access token. [regist Gyazo Application](https://gyazo.com/oauth/applications)

```ruby
  client = Cyazby::Client.new('your_access_token')
```

### List

you get image object list.

```ruby
  images = client.list
  images.each { |image| puts image.image_id }
```

### Upload

```ruby
  result = client.upload("image_path")
  puts result.permalink_url
```

### Delete

```ruby
  result = client.delete(image_id)
  puts result.permalink_url
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/gyazby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

