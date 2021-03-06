require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
# require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WebsiteDesignSandbox
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Don't generate system test files.
    config.generators.system_tests = nil

    # generate control
    config.generators do |g|
      g.template_engine :slim       # テンプレートエンジンをslimに変更
      g.assets false                # css,jsを生成しない
      g.helper false                # ヘルパーファイルを生成しない
      g.test_framework :rspec,      # テストフレームワークをrspecに変更
            fixtures: true,
            view_specs: false,
            request_specs: false,
            routing_specs: false,
            helper_specs: false
      g.fixture_replacement :factory_bot, dir: 'spec/factories'
    end
  end
end
