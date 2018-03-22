class ChangeDuedate < ActiveRecord::Migration[5.1]
  def change
    rename_column :tasks, :date, :due_date
  end
end
