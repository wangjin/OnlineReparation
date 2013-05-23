class ChangeColumnInReparationRecord < ActiveRecord::Migration
  def up
    rename_column :reparation_records, :status, :status_id
  end

  def down
  end
end
