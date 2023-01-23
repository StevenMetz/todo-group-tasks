class Jobsite < ApplicationRecord
  # has_many :jobsite_employees
  # has_many :employees, :through => :jobsite_employees
  has_many :employee_jobsites
  has_many :employees, through: :employee_jobsites

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def friendly_updated_at
    updated_at.strftime("%B %e, %Y")
  end
end
