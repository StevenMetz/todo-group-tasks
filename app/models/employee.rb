class Employee < ApplicationRecord
  # has_many :employees, class_name: "Employee", foreign_key: "manager_id"
  # belongs_to :employee, class_name: "Employee", optional: true
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :todos
end
