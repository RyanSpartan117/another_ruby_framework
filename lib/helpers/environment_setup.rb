module EnvironmentSetup
  Capybara.default_driver = :selenium_chrome

  Capybara.register_driver :selenium_chrome do |app|
    require 'selenium/webdriver'
    profile = Selenium::WebDriver::Chrome::Profile.new
    profile['browser.helperApps.alwaysAsk.force'] = false
    profile['browser.cache.disk.enable'] = false
    profile['browser.cache.memory.enable'] = false
    client = Selenium::WebDriver::Remote::Http::Default.new
    client.timeout = 60 # instead of the default 60
  Capybara::Selenium::Driver.new(app, :browser => :chrome, args: ["--window-size=2560,1600"])
  end
end