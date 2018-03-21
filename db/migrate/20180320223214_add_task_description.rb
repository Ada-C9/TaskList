class AddTaskDescription < ActiveRecord::Migration[5.1]
  def change
    add_column :name, :description, :completion_date
  end
end
