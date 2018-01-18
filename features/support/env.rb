require_relative '../../lib/helpers/environment_setup.rb'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'require_all'
require 'rspec'

include RSpec::Matchers 
include EnvironmentSetup

ActiveSupport::Dependencies.autoload_paths << File.expand_path(File.join(Dir.pwd, 'lib'))


require_rel "../../lib/pages/*.rb"
require_rel "../../lib/*.rb"

driver_setup :chrome

capybara_default_setup