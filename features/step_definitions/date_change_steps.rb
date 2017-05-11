    Given(/^User is on "Edit profile" page$/) do
      visit "/"
      fill_in 'user[email]', :with => ('qa5@monterail.com')
      fill_in 'user[password]', :with => ('123456')
      click_button('Log in')
      visit "/#/user/me"
    end

    When(/^I select "Birthday day" field for "([^"]*)"$/) do |day|
      find('input[ng-model="user.birthday_day"]').set ''
      find('input[ng-model="user.birthday_day"]').send_keys(day)
    end

    And(/^I select "Birthday month" field for "([^"]*)"$/) do |month|
      find('input[ng-model="user.birthday_month"]').set ''
      find('input[ng-model="user.birthday_month"]').send_keys(month)
    end

    And(/^I click 'Save' button$/) do
      click_on 'Save'
    end

    Then(/^I can see page with "([^"]*)" text$/) do |text|
      expect(page).to have_text(text)
    end

    Then(/^I stay on "([^"]*)" page$/) do |text|
      sleep 2
      expect(page).to have_css('h1.crs-typo__h1', text: (text))
    end

