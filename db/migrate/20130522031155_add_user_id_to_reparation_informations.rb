class AddUserIdToReparationInformations < ActiveRecord::Migration
  def change
    add_column :reparation_informations, :user_id, :integer, {:limit => 5}
  end
end
