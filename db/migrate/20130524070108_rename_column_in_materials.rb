class RenameColumnInMaterials < ActiveRecord::Migration
  def up
    rename_column :materials, :materialtype, :problem_id
  end

  def down
  end
end
