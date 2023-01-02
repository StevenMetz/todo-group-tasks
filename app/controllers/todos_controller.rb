class TodosController < ApplicationController
  def index
    todos = Todo.all
    render json: todo.as_json
  end

  def show
    todo = Todo.find_by(id: params[:id])
    render json: todo
  end

  def create
    todo = Todo.new(
      name: params[:name],
      description: params[:description],
      done: params[:done],
      employee_id: params[:employee_id],
    )
  end

  def update
  end

  def destroy
  end
end
