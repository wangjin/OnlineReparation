class CreateReparationRecords < ActiveRecord::Migration
  def change
    create_table :reparation_records do |t|
      t.integer :reparation_information_id, :limit => 10
      t.integer :accendant_id, :limit => 5
      t.integer :status, :limit => 1
      t.integer :evaluation, :limit => 1
      t.text :evaluation_desc

      t.timestamps
    end
  end
end
