class CreateJobsites < ActiveRecord::Migration[7.0]
  def change
    create_table :jobsites do |t|
      t.integer :employee_id
      t.string :location

      t.timestamps
    end
  end
end
