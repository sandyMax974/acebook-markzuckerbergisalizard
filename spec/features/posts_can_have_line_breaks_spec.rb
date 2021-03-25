require 'rails_helper'

RSpec.feature "Post", type: :feature do
    before(:each) do
      @user = User.new(name: "Lizardo", email: "lizard@example.com", password: "123secure", password_confirmation: "123secure")
      @user.save
      sign_in_helper(@user)
    end

    scenario "Can submit and display posts with line breaks" do
      visit "/posts"
      click_link "New post"
      fill_in "Message", with: "Hello\n world team lizard!"
      click_button "Submit"
      expect(page).to have_selector(".container", text: "Hello world team lizard! New post")
    end
end
