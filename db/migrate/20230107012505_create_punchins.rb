class CreatePunchins < ActiveRecord::Migration[7.0]
  def change
    create_table :punchins do |t|
      t.datetime :time_in
      t.datetime :time_out
      t.datetime :date
      t.integer :employee_id

      t.timestamps
    end
  end
end
