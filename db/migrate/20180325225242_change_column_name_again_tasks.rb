class ChangeColumnNameAgainTasks < ActiveRecord::Migration[5.1]
  def change
    rename_column(:tasks, :completed_?, :completed)
  end
end
