class ChangeColumnInReparationInformation < ActiveRecord::Migration
  def up
    change_column :reparation_informations, :process_flag, :integer, :limit => 1, :default => 0
  end

  def down
  end
end
