class ChangeDueDateColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :tasks, :due_date, :due_date
  end
end
