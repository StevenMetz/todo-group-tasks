class PunchinsController < ApplicationController
  before_action :manager?, except: [:index, :show, :create]
   # all C R U D actions RESTful only manager can edit and delete them
  def index
    @punchins = Punchin.all
    render :index
  end

  def show
    @punchin = Punchin.find_by(id: params[:id])
    render :show
  end

  def create
    @time = Time.current
    @punchin = Punchin.new(
      time_in: params[:time_in],
      time_out: params[:time_out],
      date: @time.strftime("%D"),
      employee_id: current_employee.id,
    )
    if @punchin.save
      render json: @punchin.as_json
    else
      render json: { errors: @punchin.errors.full_message }, status: :bad_request
    end
  end

  def update
    @punchin = Punchin.find_by(id: params[:id])
    @punchin.time_in = params[:time_in] || @punchin.time_in
    @punchin.time_out = params[:time_out] || @punchin.time_out
    @punchin.date = params[:date] || @punchin.date
    if @punchin.save
      render :show
    else
      render json: { errors: @punchin.errors.full_message }, status: :bad_request
    end
  end

  def destroy
    punchin = Punchin.find_by(id: params[:id])
    if punchin.delete
      render json: { message: "Time clock deleted" }
    else
      render json: { erros: punchin.erros.full_message }, status: :bad_request
    end
  end
end
