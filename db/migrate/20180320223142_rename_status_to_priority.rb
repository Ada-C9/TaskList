class RenameStatusToPriority < ActiveRecord::Migration[5.1]
  def change
    rename_column :tasks, :status, :priority
  end
end
