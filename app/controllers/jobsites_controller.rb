class JobsitesController < ApplicationController
  before_action :manager?, except: [:index, :show]
    # Only lets manager see all Jobsites but Employee can see the jobsites that belong to them
  def index
    if current_employee.manager == true
      @jobsites = Jobsite.all
    else
      @jobsites = current_employee.jobsites.all
    end
    render :index
  end
    # Employee can look at their jobsite in detail
  def show
    @jobsite = Jobsite.find_by(id: params[:id])
    render :show
  end
   # Jobsites Created By Manager only
  def create
    jobsite = Jobsite.new(
      employee_id: params[:employee_id],
      location: params[:location],
      builder: params[:builder],
    )
    if jobsite.save
      render json: jobsite.as_json
    else
      render json: { errors: jobsite.errors.full_messages }, status: :bad_request
    end
  end
    # Updates Jobsite
  def update
    @jobsite = Jobsite.find_by(id: params[:id])
    @jobsite.location = params[:location] || @jobsite.location
    @jobsite.builder = params[:builder] || @jobsite.builder
    @jobsite.employee_id = params[:employee_id] || @jobsite.employee_id
    if @jobsite.save
      render json: @jobsite.as_json
    else
      render json: { errors: @jobsite.errors.full_messages }, status: :bad_request
    end
  end
   # Removes jobsite
  def destroy
    @jobsite = Jobsite.find_by(id: params[:id])
    if @jobsite.destroy
      render json: :jobsite_removed #{ message: "Jobsite Removed" }
    else
      render json: { errors: @jobsite.errors.full_message }, status: :bad_request
    end
  end
end
