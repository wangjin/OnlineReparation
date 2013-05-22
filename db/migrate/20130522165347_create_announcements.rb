class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :announcement_title, :limit => 20
      t.text :announcement_content
      t.integer :readtimes, :limit => 5
      t.integer :user_id, :limit => 5

      t.timestamps
    end
  end
end
