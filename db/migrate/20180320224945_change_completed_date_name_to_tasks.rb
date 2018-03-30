class ChangeCompletedDateNameToTasks < ActiveRecord::Migration[5.1]
  def change
    rename_column :tasks, :completed_date, :complete
  end
end
