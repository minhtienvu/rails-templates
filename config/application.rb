insert_into_file 'config/application.rb', after: %r{config.generators.system_tests.+\n} do
  <<-EOT
    
    # Set the queuing backend to `Sidekiq`
    # 
    # Be sure to have the adapter's gem in your Gemfile
    # and follow the adapter's specific installation
    # and deployment instructions.
    config.active_job.queue_adapter = :sidekiq

    # Prefix the queue name of all jobs with Rails ENV
    config.active_job.queue_name_prefix = Rails.env

    # Automatically generate the `translation.js` files
    config.middleware.use I18n::JS::Middleware
  
    # Compress the responses to reduce the size of html/json controller responses.
    config.middleware.use Rack::Deflater
  EOT
end
