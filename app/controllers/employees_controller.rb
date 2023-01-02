class EmployeesController < ApplicationController
  def index
    employees = Employee.all
    render json: employees.as_json
  end

  def show
    employee = Employee.find_by(id: params[:id])
    render json: employee.as_json
  end

  def create
    employee = Employee.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      image: params[:image],
      manager_id: params[:manager_id],
    )
    if employee.save
      render json: employee.as_json
    else
      render json: { errors: employee.erros.full_message }
    end
  end

  def update
  end

  def destroy
  end
end
