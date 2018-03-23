class RemoveCompleteStringAddDoneBoolean < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :complete
    add_column :tasks, :done, :boolean
  end
end
