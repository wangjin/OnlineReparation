class ChangeColumnNewsTitleInNews < ActiveRecord::Migration
  def up
    change_column :news, :news_title, :string, :limit => 50
  end

  def down
  end
end
