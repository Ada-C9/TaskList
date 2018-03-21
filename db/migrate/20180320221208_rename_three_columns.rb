class RenameThreeColumns < ActiveRecord::Migration[5.1]
  def change
    rename_column :tasks, :description, :name
    rename_column :tasks, :priority, :description
    rename_column :tasks, :start_date, :priority
  end
end
