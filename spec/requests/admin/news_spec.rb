require 'rails_helper'

RSpec.describe "Admin::News", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/admin/news/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/admin/news/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/admin/news/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
