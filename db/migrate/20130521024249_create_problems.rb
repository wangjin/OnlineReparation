class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :problemType, :limit => 5

      t.timestamps
    end
  end
end
