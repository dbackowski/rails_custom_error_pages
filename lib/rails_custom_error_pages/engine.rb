module RailsCustomErrorPages
  class Engine < ::Rails::Engine
    isolate_namespace RailsCustomErrorPages

    config.i18n.load_path += Dir[config.root.join('locales', '*.yml').to_s]
  end
end
