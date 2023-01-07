class Employee < ApplicationRecord
  # has_many :employees, class_name: "Employee", foreign_key: "manager_id"
  # belongs_to :employee, class_name: "Employee", optional: true
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :todos
  has_many :punchins 

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end
  def friendly_updated_at
    updated_at.strftime("%B %e, %Y")
  end
end
