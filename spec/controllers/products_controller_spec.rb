require 'spec_helper'

describe ProductsController do

  let(:user) { FactoryGirl.create(:user) }

  describe "anonymous user" do
    describe "GET#index" do
      it "does not allow access" do
        get "index"
        # puts response.body.inspect
        expect(response.status).to be 302
      end
    end
  end

  describe "authenticated user" do
    before(:each) do
      visit new_user_session_path
      fill_in "Email", :with => user.email
      fill_in "Password", :with => user.password
      click_button "Sign in"
    end

    describe "products page" do
      it "gets the index view" do
        visit products_path
        # puts response.body.inspect
        expect(response.status).to be 200
      end
    end
  end

end