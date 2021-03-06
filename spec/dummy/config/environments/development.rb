Dummy::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.preview_path = File.join(Rails.root, '..', 'mailers', 'previews')
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default :charset => "utf-8"
  config.action_mailer.smtp_settings = {
      :user_name => '1779389065d5952e8',
      :password => 'e0daf7e0d8ef71',
      :address => 'mailtrap.io',
      :domain => 'mailtrap.io',
      :port => '465',
      :authentication => :plain
  }

  config.action_mailer.default_url_options = { :host => "localhost:3000" }

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true


  #config.identity_cache_store = config.cache_store = :mem_cache_store, Dalli::Client.new('localhost:11211', {
  #    :namespace => 'dummy'
  #})

  #config.identity_cache_store = config.cache_store = :redis_store, {
  #  :url => 'redis://localhost:6379/0',
  #  :namespace => 'translations1'
  #}

end
