class AddJobsiteIdToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :jobsite_id, :integer
  end
end
