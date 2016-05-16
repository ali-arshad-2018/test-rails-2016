require File.expand_path('../boot', __FILE__)
require "rails"
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "rails/test_unit/railtie"
Bundler.require(*Rails.groups)

module TryCatch
  class Application < Rails::Application
    # Use the responders controller from the responders gem
    config.app_generators.scaffold_controller :responders_controller
    # Settings in config/environments/* take precedence over those specified here.
    # -- all .rb files in that directory are automatically loaded.
    config.api_only = true
  end
end