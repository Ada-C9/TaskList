class ChangeTaskTitleToName < ActiveRecord::Migration[5.1]
  def change
    rename_column :tasks, :title, :name
  end
end
