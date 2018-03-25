class AddDescriptionToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :completed?, :string 
  end
end
