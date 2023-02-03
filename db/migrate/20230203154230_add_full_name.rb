class AddFullName < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :full_name, :string
  end
end
