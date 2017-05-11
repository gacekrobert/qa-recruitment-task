require "selenium-webdriver"

load File.dirname(__FILE__) + '/../spec/spec_helper.rb'
load File.dirname(__FILE__) + '/test_helper.rb'

describe "Test user is changing his birth date" do

  wait = Selenium::WebDriver::Wait.new(:timeout => 3)

  it "Set birthday fields for today" do

    @driver.find_element(:id, "user_email").send_keys("qa5@monterail.com")
    @driver.find_element(:id, "user_password").send_keys("123456")
    @driver.find_element(:name, "commit").click

    wait.until { @driver.find_element(:class => "crs-user__name") }

    expect(@driver.page_source).to include("Black John")

    @driver.navigate.to 'http://localhost:5000/#/user/me'
    wait.until { @driver.find_element(:class => "crs-input__group") }

    d = Time.now.strftime("%d")
    m = Time.now.strftime("%m")

    d_field = @driver.find_element(:xpath, "//form//div[1]//input")
    d_field.clear
    d_field.send_keys(d)

    m_field = @driver.find_element(:xpath, "//form//div[2]//input")
    m_field.clear
    m_field.send_keys(m)

    @driver.find_element(:css, "button[type='submit']").click
    wait.until { @driver.find_element(:class => "birthdaylist__month-link") }

    expect(@driver.page_source).to include("Happy Birthday!")

  end

end