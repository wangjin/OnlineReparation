class RenameColumnInReparationRecord < ActiveRecord::Migration
  def up
    rename_column :reparation_records, :accendant_id, :user_id
  end

  def down
  end
end
