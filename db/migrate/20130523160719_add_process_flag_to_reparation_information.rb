class AddProcessFlagToReparationInformation < ActiveRecord::Migration
  def change
    add_column :reparation_informations, :process_flag, :integer, :limit => 1
  end
end
