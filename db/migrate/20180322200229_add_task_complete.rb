class AddTaskComplete < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :task_complete, :boolean
  end
end
