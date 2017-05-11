RSpec.configure do |config|

  config.before(:all) do
    @driver = Selenium::WebDriver.for(:chrome)
  end

  config.before(:each) do
    @driver.navigate.to("http://localhost:5000")
  end

  config.after(:all) do
    @driver.quit
  end

end
