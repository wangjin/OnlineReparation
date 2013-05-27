class ChangeColumnInAnnouncement < ActiveRecord::Migration
  def up
    change_column :announcements, :readtimes, :integer, :limit => 5, :default => 0
  end

  def down
  end
end
