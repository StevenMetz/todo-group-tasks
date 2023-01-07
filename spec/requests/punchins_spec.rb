require 'rails_helper'

RSpec.describe "Punchins", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/punchins/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/punchins/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/punchins/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/punchins/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/punchins/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
