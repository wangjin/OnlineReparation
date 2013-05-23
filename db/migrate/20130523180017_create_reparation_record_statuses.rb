class CreateReparationRecordStatuses < ActiveRecord::Migration
  def change
    create_table :reparation_record_statuses do |t|
      t.string :status_name, :limit => 10

      t.timestamps
    end
  end
end
