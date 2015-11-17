require 'rubygems'
require 'simplecov'
SimpleCov.start 'rails'

ENV["RAILS_ENV"] = 'test'

require File.expand_path("../../config/environment", __FILE__)
require 'avocado/rspec'
require 'rspec/rails'

WebMock.disable_net_connect! allow_localhost: true
ActiveRecord::Migration.maintain_test_schema!

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

DatabaseCleaner.clean_with :truncation

RSpec.configure do |config|
  config.order = :random
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
  config.infer_spec_type_from_file_location!
  config.render_views = true
  config.global_fixtures = :all
  config.fixture_path = Rails.root.join('spec', 'fixtures')
  config.expect_with(:rspec) { |c| c.syntax = [:should, :expect] }
  config.include Capybara::DSL
  config.include Devise::TestHelpers, type: :controller
  config.include LoginHelper
end
