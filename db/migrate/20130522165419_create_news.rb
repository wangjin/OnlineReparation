class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :news_title, :limit => 20
      t.text :news_content
      t.integer :readtimes, :limit => 5
      t.integer :user_id, :limit => 5

      t.timestamps
    end
  end
end
