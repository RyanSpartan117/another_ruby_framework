require 'capybara'
require 'capybara/cucumber'
require 'active_support'
require 'site_prism'
require 'require_all'
require 'rspec'
require 'selenium/webdriver'

# Linking of pages
require_rel '../../lib/pages/*.rb'
require_rel '../../lib/helpers/*.rb'
require_rel '../../lib/*.rb'

# Helper methods
include RSpec::Matchers
include FinderHelpers

ActiveSupport::Dependencies.autoload_paths << File.expand_path(File.join(Dir.pwd, 'lib'))

Capybara.default_driver = :selenium_chrome

Capybara.register_driver :selenium_chrome do |app|
	profile = Selenium::WebDriver::Chrome::Profile.new
	profile['browser.helperApps.alwaysAsk.force'] = false
	profile['browser.cache.disk.enable'] = false
	profile['browser.cache.memory.enable'] = false
	client = Selenium::WebDriver::Remote::Http::Default.new
	client.timeout = 60 # instead of the default 60
	Capybara::Selenium::Driver.new(app, browser: :chrome, args: ['--window-size=2560,1600'])
end
