require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RoomBooking
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.generators do |g|
      g.test_framework :minitest, spec: true
    end

    config.angular_templates.module_name    = 'templates'
    config.angular_templates.ignore_prefix  = %w(templates/ components/\w+/\w+/template/ components/\w+/\w+/)
    config.angular_templates.inside_paths   = ['app/assets']
    config.angular_templates.markups        = %w(slim)
    config.angular_templates.extension      = 'html'
  end
end
