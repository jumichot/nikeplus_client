require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

require 'nikeplus'
require 'vcr'
require 'webmock/rspec'

VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  config.hook_into :webmock
  config.ignore_hosts 'codeclimate.com'
end
