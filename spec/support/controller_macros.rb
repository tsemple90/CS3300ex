module ControllerMacros
  def login_user
      #Before each test, create a user and let it login for tests
      before(:each) do
          @request.env["devise.mapping"] = Devise.mappings[:student]
          #Create a user called user with FactoryBot 
          user = FactoryBot.create(:student)
          #Let the user sign in
          sign_in user
      end
  end
end