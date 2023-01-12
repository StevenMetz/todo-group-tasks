class JobsitesController < ApplicationController
  before_action :manager?, except: [:index]

  def index
    if current_employee.manager == true
      @jobsites = Jobsite.all
    else
      @jobsites = current_employee.jobsites.all
    end
    render :index
  end

  def show
    @jobsite = Jobsite.find_by(id: params[:id])
    render :show
  end

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

  def destroy
    @jobsite = Jobsite.find_by(id: params[:id])
    if @jobsite.destroy
      render json: :jobsite_removed #{ message: "Jobsite Removed" }
    else
      render json: { errors: @jobsite.errors.full_message }, status: :bad_request
    end
  end
end
