class EmployeesController < ApplicationController
  before_action :manager?, except: [:create, :update]
 # Shows all employees
  def index
    @employees = Employee.all
    render :index
  end
   # Displays one employee
  def show
    @employee = Employee.find_by(id: params[:id])
    render :show
  end
  # Created Employee
  def create
    employee = Employee.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      image: params[:image],
    )

    if employee.save
      render json: employee.as_json
    else
      render json: { errors: employee.errors.full_messages }, status: :bad_request
    end
  end
   # Updates just one part of an employees profile
  def update
    @employee = Employee.find_by(id: params[:id])
    @employee.first_name = params[:first_name] || @employee.first_name
    @employee.last_name = params[:last_name] || @employee.last_name
    @employee.email = params[:email] || @employee.email
    @employee.image = params[:image] || @employee.image
    if @employee.manager != params[:manager]
      @employee.toggle!(:manager)
    end
    if @employee.save
      render :show
    else
      render json: { errors: @employee.errors.full_message }, status: :bad_request
    end
  end
   # Deletes employee
  def destroy
    employee = Employee.find_by(id: params[:id])
    if employee.delete
      render json: { message: "Employee Terminated" }
    else
      render json: { errors: employee.errors.full_message }, status: 418
    end
  end
end
