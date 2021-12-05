require "rails_helper"
include ControllerMacros

def login
  user = FactoryBot.create(:user)
  login_as(user)
end

RSpec.describe ProjectsController, type: :controller do
  login_user

  context "GET #index" do
    it "returns a success response" do
      get :index
      # Project.create! valid_attributes
      # get :index, params: {}
      # expect(response.success).to eq(true)
      expect(response).to be_success
      #expect(response).to have_http_status(302)
    end
  end

  context "GET #show" do
    let!(:project) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      get :show, params: { id: project }
      # Project.create! valid_attributes
      # get :index, params: {}
      expect(response).to be_success
      #expect(response).to have_http_status(302)
    end
  end
end
