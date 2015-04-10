class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.integer :user_id
      t.integer :country_id
    end
  end
end
