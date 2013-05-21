class CreateReparationInformations < ActiveRecord::Migration
  def change
    create_table :reparation_informations do |t|
      t.string :realname, :limit => 20 
      t.string :cellphone, :limit => 11
      t.string :location, :limit => 50
      t.string :problem_desc, :limit=> 100
      t.integer :problem_id, :limit => 3

      t.timestamps
    end
  end
end
