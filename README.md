# RailsAdminFeaturedContent

[![Gem Version](https://badge.fury.io/rb/rails_admin_content_builder.svg)](https://badge.fury.io/rb/rails_admin_content_builder)

Easy way for create featured contents using rails_admin

## Importante

First make sure that the gem [rails_admin_content_builder](https://github.com/luizpicolo/rails_admin_content_builder) is installed and working properly

## Installation

**Test with rails < 5 and TurboLink < 5**

Add this line to your application's Gemfile:
This is a complement to the gem rails_admin_content_builder, only works with dependencies lists in requirements and not alone

```ruby
gem 'owlcarousel-rails' # For slides
gem 'rails_admin_featured_content'
```

And then execute:

    $ bundle

Run the generator and migrations

    rails g rails_admin_featured_content
    rake db:migrate

Add styles in app/assets/stylesheets/application.scss

```ruby
*= require rails_admin_featured_content
*= require owl.carousel
*= require owl.theme
```

Add Javascript in app/assets/javascripts/application.js

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

And, add in view/layouts/application.html.erb (optional)

```html
<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" media="all">
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

# Demonstration

Featured Content:
[link](https://example-cb-fc.herokuapp.com/)    
Rails Admin: 
[link](https://example-cb-fc.herokuapp.com/admin/rails_admin_featured_content~featured_content/1/featured_content)

## Requirements

Dependencies

    MiniMagick
    Rails_admin
    Rails_admin_content_builder

Supported ORM

    ActiveRecord

Supported Asset Plugin

    CarrierWave


## TODO

 - Tests :)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/luizpicolo/rails_admin_featured_content. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
