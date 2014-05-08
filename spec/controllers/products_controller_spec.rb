require 'spec_helper'

describe ProductsController do
  describe "GET#index" do
    it "gets the index view" do
      get "index"
      expect(response.status).to be 200
    end
  end

end