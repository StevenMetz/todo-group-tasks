class Jobsite < ApplicationRecord
  # has_many :jobsite_employees
  # has_many :employees, :through => :jobsite_employees
  # has_and_belongs_to_many :employees
  has_and_belongs_to_many :employees

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def friendly_updated_at
    updated_at.strftime("%B %e, %Y")
  end
end
