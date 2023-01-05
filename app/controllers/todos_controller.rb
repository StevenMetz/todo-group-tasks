class TodosController < ApplicationController
  before_action :manager?, except: [:index, :update]

  def index
    if current_employee.manager == true
      todos = Todo.all
    else
      todos = current_employee.todos.all
    end
    render json: todos.as_json
  end

  def show
    todo = Todo.find_by(id: params[:id])
    render json: todo
  end

  def create
    todo = Todo.new(
      name: params[:name],
      description: params[:description],
      employee_id: params[:employee_id],
    )
    if todo.save
      render json: todo.as_json
    else
      render json: { errors: todo.errors.full_messages }, status: :bad_request
    end
  end

  def update
    todo = Todo.find_by(id: params[:id])
    if current_employee.manager == true
      todo.name = params[:name] || todo.name
      todo.description = params[:description] || todo.description
    end
    if todo.done != params[:done]
      todo.toggle!(:done)
    end
    if todo.save
      render json: todo.as_json
    else
      render json: { errors: todo.errors.full_message }, status: :bad_request
    end
  end

  def destroy
    todo = Todo.find_by(id: params[:id])
    if todo.delete
      render json: :success
    else
      render json: { errors: todo.errors.full_message }, status: :bad_request
    end
  end
end
