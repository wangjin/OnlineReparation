class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :limit => 20
      t.string :password, :limit => 20
      t.string :realname, :limit => 20
      t.string :cellphone, :limit => 11
      t.string :email, :limit => 50
      t.string :usertype, :limit => 1

      t.timestamps
    end
  end

	def down
		drop_table :users
	end
end
