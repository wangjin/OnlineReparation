class ChangeColumnInNews < ActiveRecord::Migration
  def up
    change_column :news, :readtimes, :integer, :limit => 5, :default => 0
  end

  def down
  end
end
