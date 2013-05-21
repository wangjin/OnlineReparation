class AddColumnToProblems < ActiveRecord::Migration
  def change
    add_column :problems, :problemId, :integer, :limit => 2
  end
end
