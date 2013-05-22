class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :materialname, :limit => 20
      t.integer :materialtype, :limit => 2
      t.decimal :materialprice, :precision => 5, :scale => 2
      t.integer :materialamount

      t.timestamps
    end
  end
end
