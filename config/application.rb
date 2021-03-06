require_relative 'boot'

require 'rails/all'
require "redis"
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HarambeParable
  class Application < Rails::Application
  	config.assets.paths << "#{Rails}/vendor/assets/fonts"
    config.time_zone = 'Eastern Time (US & Canada)'
    config.active_record.default_timezone = :local # Or :utc
    

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
