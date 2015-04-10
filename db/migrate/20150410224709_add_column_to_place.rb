class AddColumnToPlace < ActiveRecord::Migration
  def change
    add_column :places, :country, :string
  end
end
