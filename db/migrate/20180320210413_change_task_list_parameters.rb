class ChangeTaskListParameters < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :completed, :string
    rename_column :tasks, :misc_notes, :description
  end
end
