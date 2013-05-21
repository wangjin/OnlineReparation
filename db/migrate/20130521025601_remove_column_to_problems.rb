class RemoveColumnToProblems < ActiveRecord::Migration
  def up
  end

  def down
    remove_column :problemId
  end
end
