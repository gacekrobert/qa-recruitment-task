
  And(/^I type "([^"]*)" in email field$/) do |mail|
    fill_in 'user[email]', :with => (mail)
  end

  And(/^I type "([^"]*)" in password field$/) do |password|
    fill_in 'user[password]', :with => (password)
  end

  When(/^I click "([^"]*)" button$/) do |text|
    click_button((text))
  end

  Then(/^I visit "([^"]*)" user page$/) do |name|
    visit '/#'
    expect(page).to have_css('div.crs-user__name', text: (name))
  end

