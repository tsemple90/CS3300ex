require "rails_helper"

RSpec.describe ProjectsController, type: :controller do

    #Login the test user so the tests can run
    login_user

    context "GET #index" do
        it "returns a success response" do
            get :index
            expect(response).to be_success
        end
    end

    context "GET #show" do
        let!(:project) { Project.create(title: "Test title", description: "Test description") }
        it "returns a success response" do
            get :show, params: { id: project }
            expect(response).to be_success
        end
    end
end