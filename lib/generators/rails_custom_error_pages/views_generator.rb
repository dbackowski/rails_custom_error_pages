module RailsCustomErrorPages
  module Generators
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../app/views', __FILE__)

      def self.banner
        "Copy error pages template to your application"
      end

      def copy_config_file
        directory 'rails_custom_error_pages', 'app/views/rails_custom_error_pages'
      end
    end
  end
end