# config/environments/development.rb
Rails.application.configure do
   # Settings specified here will take precedence over those in config/application.rb.
 
   # In the development environment your application's code is reloaded on
   # every request. This slows down response time but is perfect for development
   # since you don't have to restart the web server when you make code changes.
   config.cache_classes = false
 
   # Do not eager load code on boot.
   config.eager_load = false
 
   # Show full error reports.
   config.consider_all_requests_local = true
 
   # Enable/disable caching. By default caching is disabled.
   # Run rails dev:cache to toggle caching.
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
 
   # Print deprecation notices to the Rails logger.
   config.active_support.deprecation = :log
 
   # Raise exceptions for disallowed deprecations.
   config.active_support.disallowed_deprecation = :raise
 
   # Tell Active Support which deprecation messages to disallow.
   config.active_support.disallowed_deprecation_warnings = []
 
   # Raise an error on page load if there are pending migrations.
   config.active_record.migration_error = :page_load
 
   # Highlight code that triggered database queries in logs.
   config.active_record.verbose_query_logs = true
 
   # Suppress logger output for asset requests.
   config.assets.quiet = true
 
   # Raises error for missing translations.
   # config.i18n.raise_on_missing_translations = true
 
   # Annotate rendered view with file names.
   # config.action_view.annotate_rendered_view_with_filenames = true
 
   # Action Mailer configuration
   config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
 end