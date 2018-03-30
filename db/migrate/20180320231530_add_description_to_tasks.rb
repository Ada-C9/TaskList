class AddDescriptionToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :add_description_to_task, :string
  end
end
