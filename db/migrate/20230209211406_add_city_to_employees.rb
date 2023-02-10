class AddCityToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :city, :string
  end
end
