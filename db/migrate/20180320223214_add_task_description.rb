class AddTaskDescription < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :description, :string
  end
end
