class ChangeMaterailprice < ActiveRecord::Migration
  def up
    change_column :materials, :materialprice, :decimal, :precision => 7, :scale => 2
  end

  def down
  end
end
