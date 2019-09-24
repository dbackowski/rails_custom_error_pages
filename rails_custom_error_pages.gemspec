$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_custom_error_pages/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_custom_error_pages"
  s.version     = RailsCustomErrorPages::VERSION
  s.authors     = ["Damian Baćkowski"]
  s.email       = ["damianbackowski@gmail.com"]
  s.homepage    = "https://github.com/dbackowski/rails_custom_error_pages"
  s.summary     = "Rails custom error pages engine."
  s.description = "Rails custom error pages engine."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency 'rails', '>= 4.2'
  s.add_dependency 'bootstrap-sass', '~> 3.3.6'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails', '~> 3.5'
  s.add_development_dependency 'capybara', '~> 2.7'
end
