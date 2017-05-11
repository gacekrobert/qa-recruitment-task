

    When(/^I visit home page$/) do
      visit "/users/sign_in#/" #visits the root page
    end

    Then(/^I can see "([^"]*)" page$/) do |text|
      expect(page).to have_text(text)
    end

