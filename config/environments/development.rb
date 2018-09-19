Rails.application.configure do
   
  # devise says to define default url
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }

  # set up for email sending even in dev mode
  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  config.action_mailer.delivery_method = :smtp

  ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => "587",
    :authentication => :plain,
    :user_name => "do-not-reply@example.com",
    :password => ENV["SMTP_ENTRY"],
    :enable_starttls_auto => true
  }
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local = true
  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end
  config.active_storage.service = :local
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.perform_caching = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.active_record.verbose_query_logs = true
  config.assets.debug = true
  config.assets.quiet = true
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
  config.action_mailer.delivery_method = :test
  config.action_mailer.default_url_options = { :host => 'https://project-management-voonshunzhi.c9users.io'}
end
