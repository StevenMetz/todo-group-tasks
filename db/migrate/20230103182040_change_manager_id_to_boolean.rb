class ChangeManagerIdToBoolean < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :manager_id
    add_column :employees, :manager, :boolean, default: false
  end
end
