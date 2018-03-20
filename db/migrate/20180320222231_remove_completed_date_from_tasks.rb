class RemoveCompletedDateFromTasks < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :completed_date
  end
end
