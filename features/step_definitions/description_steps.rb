    Given(/^User is on user number "([^"]*)" proposition page$/) do |number|
      visit "/"
      fill_in 'user[email]', :with => ('qa5@monterail.com')
      fill_in 'user[password]', :with => ('123456')
      click_button('Log in')
      visit "/#/user/" + (number)
    end

    And(/^I type "([^"]*)" text in "([^"]*)" textarea$/) do |description, field_name|
      find('textarea[ng-model="' + (field_name) + '"]').set ''
      find('textarea[ng-model="' + (field_name) + '"]').send_keys(description)
    end

    When(/^I click Save description button$/) do
      find(:xpath, '//form/div/button[1]').click
      sleep 1
    end

    And(/^I leave empty "([^"]*)" textarea$/) do |field_name|
      find('textarea[ng-model="' + (field_name) + '"]').set ''
    end

    When(/^I type "([^"]*)" in Title field$/) do |title|
      fill_in 'propositionTitle', :with => (title)
    end

    And(/^I type "([^"]*)" in description field$/) do |description|
      fill_in 'propositionDescription', :with => (description)
    end

    And(/^I type "([^"]*)" in price field$/) do |price|
      fill_in 'propositionValue', :with => (price)
    end

    And(/^I click Save proposition button$/) do
      find(:xpath, '//form/input').click
      sleep 1
    end