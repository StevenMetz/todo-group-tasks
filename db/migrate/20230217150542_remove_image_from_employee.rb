class RemoveImageFromEmployee < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :image
  end
end
