class RenameTaskWhenToTime < ActiveRecord::Migration[5.1]
  def change
    rename_column :tasks, :when, :time
  end
end
