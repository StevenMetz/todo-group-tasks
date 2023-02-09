class AddAddressToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :address, :string
    add_column :employees, :state, :string
    add_column :employees, :zip_code, :integer
  end
end
