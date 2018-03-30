class RenameColumnInTasks < ActiveRecord::Migration[5.1]
  def change
    rename_column(:tasks, :completed?, :completed_?)
  end
end
