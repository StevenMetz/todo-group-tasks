require "rails_helper"

RSpec.describe "Todos", type: :request do
  before(:all) do
    @employee = Employee.create!(
      first_name: "steven",
      last_name: "metz",
      email: "test@email.com",
      password: "password",
      password_confirmation: "password",
      image: "image.com",
      manager: true,
    )
  end
  before(:all) do
    @todo = Todo.create!(name: "build stuff", description: "get it done faster", employee_id: nil, done: false)
  end

  describe "GET /index" do
    it "returns http success" do
      get "/todos"
      expect(response).to have_http_status(:success)
      expect(@todo).to be_valid
    end
  end

  describe "GET /show" do
    it "returns http success" do
      id = @todo.id
      get "/todos/#{id}"
      expect(response).to have_http_status(:success)
      expect(@todo.name).to eq("build stuff")
    end
  end

  describe "GET /create" do
    it "checks a todo is created" do
      post "/todos"
      expect(response).to have_http_status(:success)
      expect(@todo).to be_valid
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/todos/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/todos/destroy"
      expect(response).to have_http_status(:success)
    end
  end
end
