class AddBuilderToJobsite < ActiveRecord::Migration[7.0]
  def change
    add_column :jobsites, :builder, :string
  end
end
