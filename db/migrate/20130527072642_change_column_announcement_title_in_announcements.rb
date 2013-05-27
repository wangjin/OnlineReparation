class ChangeColumnAnnouncementTitleInAnnouncements < ActiveRecord::Migration
  def up
    change_column :announcements, :announcement_title, :string, :limit => 50
  end

  def down
  end
end
