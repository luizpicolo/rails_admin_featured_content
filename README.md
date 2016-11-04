# Rails Admin Featured Content

[![Gem Version](https://badge.fury.io/rb/rails_admin_content_builder.svg)](https://badge.fury.io/rb/rails_admin_content_builder)
[![Code Climate](https://codeclimate.com/github/luizpicolo/rails_admin_featured_content/badges/gpa.svg)](https://codeclimate.com/github/luizpicolo/rails_admin_featured_content)
[![Test Coverage](https://codeclimate.com/github/luizpicolo/rails_admin_featured_content/badges/coverage.svg)](https://codeclimate.com/github/luizpicolo/rails_admin_featured_content/coverage)
[![Issue Count](https://codeclimate.com/github/luizpicolo/rails_admin_featured_content/badges/issue_count.svg)](https://codeclimate.com/github/luizpicolo/rails_admin_featured_content)
[![Build Status](https://travis-ci.org/luizpicolo/rails_admin_featured_content.svg?branch=master)](https://travis-ci.org/luizpicolo/rails_admin_featured_content)

An easy way for creating Featured Content using [rails_admin](https://github.com/sferik/rails_admin).

## Preview

![featured-min](https://cloud.githubusercontent.com/assets/2979365/20011773/7b5a7544-a28b-11e6-950c-3b47f4556b98.jpg)

### Demonstration

[Featured Content](https://example-cb-fc.herokuapp.com/admin/rails_admin_featured_content~featured_content/4/featured_content)   
[Featured generated](https://example-cb-fc.herokuapp.com/)

## Important

First, make sure that the gem [rails_admin_content_builder](https://github.com/luizpicolo/rails_admin_content_builder) is installed and working properly.

## Installation

**Test with rails < 5 and TurboLink < 5**

Add this line to your application's Gemfile:
This is a complement to the gem rails_admin_content_builder, only works with dependencies listed in the requirements and not alone.

```ruby
gem 'owlcarousel-rails' # For slides
gem 'rails_admin_featured_content'
```

After the above step, execute:

    $ bundle

Run the generator and migrations:

    rails g rails_admin_featured_content
    rake db:migrate

Add styles in app/assets/stylesheets/application.scss:

```ruby
*= require rails_admin_featured_content
*= require owl.carousel
*= require owl.theme
```

Add Javascript in app/assets/javascripts/application.js:

```ruby
//= require owl.carousel
```

```javascript
$(document).ready(function() {
  $(".fc-slide").owlCarousel({
    autoPlay: 7000,
    singleItem: true,
    stopOnHover: true,
    slideSpeed: 500,
    paginationSpeed: 500,
    rewindSpeed: 1000,
    navigation: true,
    navigationText: ['<span class="ion-chevron-left"></span>','<span class="ion-chevron-right"></span>']
  });
});

```

Also, add in view/layouts/application.html.erb (optional):

```html
<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" media="all">
```

## Usage

Include this in your controller:

```ruby
@featured = RailsAdminFeaturedContent::FeaturedContent.where(status: true).first
```

In your show featured content view:

```
<%= @featured.featured_sanitized %>
```

## Requirements

Dependencies:

    MiniMagick
    Rails_admin
    Rails_admin_content_builder

Supported ORM:

    ActiveRecord

Supported Asset Plugin:

    CarrierWave

## TODO

 - Tests :)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, execute `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/luizpicolo/rails_admin_featured_content. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
