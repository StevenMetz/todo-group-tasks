class CreateEmployeeJobsites < ActiveRecord::Migration[7.0]
  def change
    create_table :employee_jobsites do |t|
      t.references :employee, null: false, foreign_key: true
      t.references :jobsite, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end
