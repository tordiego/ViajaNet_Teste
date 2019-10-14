require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 15
end

Capybara.page.driver.browser.manage.window.maximize