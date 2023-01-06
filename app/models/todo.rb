class Todo < ApplicationRecord
  belongs_to :employee

  # def current_employee_tasks(employee)
  #   Task.where("todo.employee_id = ?", employee.id).order("created_at asc").first
  # end
  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def friendly_updated_at
    updated_at.strftime("%B %e, %Y")
  end
end
