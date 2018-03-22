class AddTargetDateToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :target_date, :datetime
  end
end
