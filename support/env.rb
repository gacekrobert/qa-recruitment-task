require "cucumber/rails"
     
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, browser: :chrome)
    end
    
    Capybara.configure do |config|
     # config.run_server = false
     # Set capybara's driver. Use your own favorite
     config.default_driver = :chrome
     config.app_host = 'http://localhost:5000'
     config.default_max_wait_time = 3
    end
