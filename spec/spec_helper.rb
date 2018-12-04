require 'rspec'
require 'json'
require 'httparty'

require_relative '../faker'

RSpec.configure do |configure|
  configure.formatter = :documentation
end
