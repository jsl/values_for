require 'rubygems'
require 'mocha'
require 'spec'

require 'values_for'

Spec::Runner.configure do |config|
  config.mock_with(:mocha)
end
