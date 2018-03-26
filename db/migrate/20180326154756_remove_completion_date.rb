class RemoveCompletionDate < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :completion_date, :string
  end
end
