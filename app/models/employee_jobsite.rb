class EmployeeJobsite < ApplicationRecord
  belongs_to :employee
  belongs_to :jobsite
  has_one_attached :image
end
