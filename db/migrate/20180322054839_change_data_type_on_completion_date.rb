class ChangeDataTypeOnCompletionDate < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :completion_date, :date

    change_column :tasks, :start_date, :date
  end
end
