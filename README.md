# RailsAdminFeaturedContent

![Work in progress](http://messages.hellobits.com/warning.svg?message=Work%20in%20progress)

Easy way for create featured contents using rails_admin

## Installation

Add this line to your application's Gemfile:
This is a complement to the gem rails_admin_content_builder, only works with dependencies lists in requirements and not alone

```ruby
gem 'rails_admin'
gem 'rails_admin_content_builder'
gem 'rails_admin_featured_content'
```

And then execute:

    $ bundle

Run the generator and migrations

    rails g rails_admin_content_builder
    rake db:migrate

Add styles in app/assets/application.scss

```ruby
*= require rails_admin_featured_content
```

## Usage

Include in your controller

```ruby
@featured = RailsAdminFeaturedContent::FeaturedContent.where(status: true).first
```

In your show featured content view

```ruby
<%= @featured.featured_sanitized %>
```

## Requirements

Dependencies

    MiniMagick
    Rails_admin
    Rails_admin_content_builder

Supported ORM

    ActiveRecord

Supported Asset Plugin

    CarrierWave


## Usage

 - Tests :)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/luizpicolo/rails_admin_featured_content. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
