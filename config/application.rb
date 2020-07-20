require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
# require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TripleOneBackend
  class Application < Rails::Application
    config.load_defaults 6.0

    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      :address => 'smtp@gmail.com',
      :port => 587, 
      :username => Rails.application.secrets.email_user_name, 
      :password => Rails.application.secrets.email_password,
      :authentication => 'plain',
      :enable_starttls_auto => true
    }
    config.api_only = true
  end
end
