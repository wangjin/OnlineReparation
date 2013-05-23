class RenameStatusIdInReparationRecord < ActiveRecord::Migration
  def up
    rename_column :reparation_records, :status_id, :reparation_record_status_id
  end

  def down
  end
end
