require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Savant
  class Application < Rails::Application

    config.generators do |g|
      g.test_framework :rspec,
        :fixtures => false,
        :view_specs => false,
        :helper_specs => false,
        :routing_specs => false,
        :controller_specs => false,
        :request_specs => false
      g.fixture_replacement :factory_girl, :dir => "spec/factories"
    end

    config.active_record.raise_in_transactional_callbacks = true

    config.paperclip_defaults = {
      :storage => :s3,
      :s3_credentials => {
        :bucket => ENV["s3_bucket"],
        :access_key_id => ENV["s3_access_key_id"],
        :secret_access_key => ENV["s3_secret_access_key"]
      }
    }
  end
end
