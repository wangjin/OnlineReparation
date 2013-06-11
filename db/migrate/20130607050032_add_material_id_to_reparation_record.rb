class AddMaterialIdToReparationRecord < ActiveRecord::Migration
  def change
    add_column :reparation_records, :material_id, :integer
  end
end
