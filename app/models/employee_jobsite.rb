class EmployeeJobsite < ApplicationRecord
  belongs_to :employee
  belongs_to :jobsite
  
end
