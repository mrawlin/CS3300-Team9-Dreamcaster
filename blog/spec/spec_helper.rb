require 'simplecov'
SimpleCov.command_name 'RSpec'
require File.expand_path('../../config/environment', __FILE__)
require File.expand_path('../../config/environments/test', __FILE__)

Rails.application.eager_load!