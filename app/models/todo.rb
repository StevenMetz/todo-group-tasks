class Todo < ApplicationRecord
  belongs_to :employee

  # def current_employee_tasks(employee)
  #   Task.where("todo.employee_id = ?", employee.id).order("created_at asc").first
  # end
end
