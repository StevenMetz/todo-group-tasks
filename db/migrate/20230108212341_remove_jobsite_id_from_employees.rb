class RemoveJobsiteIdFromEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :jobsite_id
  end
end
