class AddCompletionDate < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :due_date, :string
  end
end
