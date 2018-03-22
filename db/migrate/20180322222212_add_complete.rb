class AddComplete < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :complete_date, :date
    rename_column :tasks, :duedate, :date 
  end
end
