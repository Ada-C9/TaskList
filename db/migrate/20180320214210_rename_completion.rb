class RenameCompletion < ActiveRecord::Migration[5.1]
  def change
    rename_column :tasks, :completion, :complete
  end
end
