# rails_custom_error_pages

Rails engine for custom error pages.


## Installation

Add this line to your application's Gemfile:

    gem 'rails_custom_error_pages'

And then execute:

    $ bundle 

Or install it yourself as:

    gem install rails_custom_error_pages

## Customize 

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