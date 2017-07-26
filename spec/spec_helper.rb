$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift File.expand_path('../../spec', __FILE__)

require 'rspec'
require 'rack/test'

ENV["RACK_ENV"] = "test"

require_relative 'todolist/config/application.rb'


require 'bundler/setup'
require 'zucy'



RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end