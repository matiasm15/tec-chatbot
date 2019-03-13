# frozen_string_literal: true

if Rails.env.production?
  Raven.configure do |config|
    config.silence_ready = true
    config.environments = %w[staging production]
    config.release = ENV['HEROKU_SLUG_COMMIT']
    config.processors -= [Raven::Processor::PostData] # Send POST data
    config.excluded_exceptions += %w[
      SilentWorkerError
    ]
    config.tags = {
      environment: Rails.env
    }
  end
end
