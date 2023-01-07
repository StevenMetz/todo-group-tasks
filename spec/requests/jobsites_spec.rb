require 'rails_helper'

RSpec.describe "Jobsites", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/jobsites/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/jobsites/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/jobsites/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/jobsites/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/jobsites/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
