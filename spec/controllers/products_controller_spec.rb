require 'spec_helper'

describe ProductsController do

  let(:user) { FactoryGirl.create(:user) }

  describe "anonymous user" do
    describe "GET#index" do
      it "does not allow access" do
        get "index"
        puts response.body.inspect
        expect(response.status).to be 302
      end
    end
  end

  describe "authenticated user" do
    before(:each) do
      visit new_user_session
      fill_in "Email", :with => admin.email
      fill_in "Password", :with => admin.password
      click_button "Log in"
    end

    describe "GET#index" do
      it "gets the index view" do
        get "index"
        expect(response.status).to be 200
      end
    end
  end

end