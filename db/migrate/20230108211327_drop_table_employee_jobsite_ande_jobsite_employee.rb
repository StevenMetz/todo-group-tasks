class DropTableEmployeeJobsiteAndeJobsiteEmployee < ActiveRecord::Migration[7.0]
  def change
    drop_table :employee_jobsites
    drop_table :jobsite_employees
  end
end
