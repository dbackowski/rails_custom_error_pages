# rails_custom_error_pages [![Build Status](https://travis-ci.org/dbackowski/rails_custom_error_pages.svg?branch=master)](https://travis-ci.org/dbackowski/rails_custom_error_pages)

Rails engine for custom error pages with bootstrap.

![screenshot](http://i.imgur.com/x744BAB.png)

## Installation

Add this line to your application's Gemfile:

    gem 'rails_custom_error_pages'

And then execute:

    $ bundle 

Or install it yourself as:

    gem install rails_custom_error_pages

## Customize 

To customize locale:

    en:
      rails_custom_error_pages:
        errors:
          show:
            title: Error %{status_code}
            '404':
              description: The page you were looking for doesn't exist.
            '422':
              description: The change you wanted was rejected.
            '500':
              description: We're sorry, but something went wrong.


To customize template, run generator:

    rails g rails_custom_error_pages:views

This will copy error template to your application views as:

    app/views/rails_custom_error_pages/errors/show.html.erb

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

Released under the MIT License.