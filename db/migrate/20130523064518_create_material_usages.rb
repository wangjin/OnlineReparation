class CreateMaterialUsages < ActiveRecord::Migration
  def change
    create_table :material_usages do |t|
      t.integer :material_id, :limit => 5
      t.integer :reparation_record_id, :limit => 10

      t.timestamps
    end
  end
end
