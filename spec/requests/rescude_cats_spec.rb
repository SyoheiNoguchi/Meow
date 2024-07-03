require 'rails_helper'

RSpec.describe "RescudeCats", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/rescude_cats/index"
      expect(response).to have_http_status(:success)
    end
  end

end
