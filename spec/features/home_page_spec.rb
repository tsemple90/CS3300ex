require "rails_helper"
def login
  user = FactoryBot.create(:user)
  login_as(user)
end

RSpec.feature "Visiting the homepage", type: :feature do
  
  scenario "The visitor should see projects" do
    login
    visit root_path
    expect(page).to have_text("Projects")
  end
end
