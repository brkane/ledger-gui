ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|
  config.infer_base_class_for_anonymous_controllers = true

  config.treat_symbols_as_metadata_keys_with_true_values = true

  config.order = "random"

  config.alias_it_should_behave_like_to :has_behavior
  config.alias_it_should_behave_like_to :it_has_behavior, 'has behavior:'

  # Setup Mongoid
  include Mongoid::Matchers
  if Mongoid.default_session.options[:database].include? "production"
    raise "Don't run specs on the prod db, it will delete everything."
  end

  config.before do
    Mongoid.purge!
    Mongoid::IdentityMap.clear
  end

end
