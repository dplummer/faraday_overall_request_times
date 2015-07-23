# Faraday::OverallRequestTimes

A [Faraday](https://github.com/lostisland/faraday) middleware for recording the
total time spent each request on the HTTP request for a given service. Useful
if you use several HTTP backends in each request and want to log the total time
spent in each in your Rails log, like the db time.

## WARNING

I do not know if this is threadsafe yet. Assume it is not.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'faraday_overall_request_times'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install faraday_overall_request_times

## Usage

```ruby
RemoteService.connection do |conn|
  conn.use Faraday::OverallRequestTimes::Middleware, :remote_service_name
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/faraday_overall_request_times.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

