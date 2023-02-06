class RemoveFullName < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :full_name
  end
end
