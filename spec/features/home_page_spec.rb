require 'rails_helper'

def newUser
  person = FactoryBot.create(:student)
  login_as(person)
end

RSpec.feature "Visiting the homepage", type: :feature do
    scenario "The visitor should see projects" do
      newUser
    visit root_path
    expect(page).to have_text("Projects")
  end
end

=begin Default feature for home page
RSpec.feature "HomePages", type: :feature do
  pending "add some scenarios (or delete) #{__FILE__}"
end
=end