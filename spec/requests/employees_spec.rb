require "rails_helper"

RSpec.describe "Employees", type: :request do
  describe "GET /index" do
    it "should show all employees" do
      Employee.create!(
        first_name: "steven",
        last_name: "metz",
        email: "test@email.com",
        password: "password",
        password_confirmation: "password",
        image: "image.com",
      )
      Employee.create!(
        first_name: "steven",
        last_name: "metz",
        email: "test1@email.com",
        password: "password",
        password_confirmation: "password",
        image: "image.com",
      )
      Employee.create!(
        first_name: "steven",
        last_name: "metz",
        email: "test2@email.com",
        password: "password",
        password_confirmation: "password",
        image: "image.com",
      )
      get "/employees"
      expect(response).to have_http_status(:success)
      expect(Employee.count).to eq(3)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      employee = Employee.create!(
        first_name: "steven",
        last_name: "metz",
        email: "test2@email.com",
        password: "password",
        password_confirmation: "password",
        image: "image.com",
      )
      employee_id = Employee.first.id
      get "/employees/#{employee_id}"
      expect(response).to have_http_status(:success)
      expect(employee.first_name).to eq("steven")
    end
  end

  describe "GET /create" do
    it "should create an employee" do
      # Employee.create!(
      #   first_name: "steven",
      #   last_name: "metz",
      #   email: "test@email.com",
      #   password: "password",
      #   password_confirmation: "password",
      #   image: "image.com",
      # )
      post "/employees"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      employee = Employee.create!(
        first_name: "steven",
        last_name: "metz",
        email: "test2@email.com",
        password: "password",
        password_confirmation: "password",
        image: "image.com",
      )
      employee.last_name = "johnson"
      employee_id = Employee.first.id
      patch "/employees/#{employee_id}"
      expect(response).to have_http_status(:success)
      expect(employee.last_name).to eq("johnson")
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      Employee.create!(
        first_name: "steven",
        last_name: "metz",
        email: "test2@email.com",
        password: "password",
        password_confirmation: "password",
        image: "image.com",
      )
      employee_id = Employee.first.id
      delete "/employees/#{employee_id}"
      expect(response).to have_http_status(:success)
    end
  end
end
