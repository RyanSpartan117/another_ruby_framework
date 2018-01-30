require 'capybara'
require 'capybara/cucumber'
require 'active_support'
require 'site_prism'
require 'require_all'
require 'rspec'

#Linking of pages
require_rel "../../lib/pages/*.rb"
require_rel "../../lib/helpers/*.rb"
require_rel "../../lib/*.rb"

#Helper methods
include RSpec::Matchers 
include EnvironmentSetup
include FinderHelpers

ActiveSupport::Dependencies.autoload_paths << File.expand_path(File.join(Dir.pwd, 'lib'))
