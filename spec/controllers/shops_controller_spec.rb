require 'spec_helper'

describe ShopsController do
  describe "GET#index" do
    render_views
    it "gets the index view" do
      get "index"
      expect(response.status).to be 200
    end
  end

end