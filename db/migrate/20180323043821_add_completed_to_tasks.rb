class AddCompletedToTasks < ActiveRecord::Migration[5.1]
  def change
    # add_column(table_name, column_name, data_type, options)
    add_column :tasks, :completed?, :boolean
  end
end
