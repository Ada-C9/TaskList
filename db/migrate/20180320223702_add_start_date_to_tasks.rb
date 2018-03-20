class AddStartDateToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :start_date, :datetime
  end
end
