class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :realname
      t.string :email
      t.integer :suggestion_type
      t.string :suggestion_desc

      t.timestamps
    end
  end
end
