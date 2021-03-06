require_relative 'boot'

require 'rails/all'
require 'devise'

Bundler.require(*Rails.groups)

module ChatSpace2
  class Application < Rails::Application
    config.generators do |g|
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.test_framework false
    end
    config.i18n.default_locale = :ja
    config.autoload_paths += Dir[Rails.root.join('app', 'uploaders')]
  end
end
