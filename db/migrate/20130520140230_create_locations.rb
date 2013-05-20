class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :parentId, :limit => 3
      t.integer :locationId, :limit => 3
      t.string :locationName, :limit => 15

      t.timestamps
    end
  end
end
