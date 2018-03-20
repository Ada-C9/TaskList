class AddNameAndCompletionDate < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :name, :string
    add_column :tasks, :date_of_completion, :string
  end
end
