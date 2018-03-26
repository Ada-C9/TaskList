class AddActualCompletionDateToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :actual_completion_date, :string
  end
end
