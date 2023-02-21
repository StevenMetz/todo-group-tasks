class Employee < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :todos
  has_many :punchins
  has_many :employee_jobsites
  has_many :jobsites, through: :employee_jobsites
  has_one_attached :image

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def friendly_updated_at
    updated_at.strftime("%B %e, %Y")
  end
end
