class ChangeNameForCompletion < ActiveRecord::Migration[5.1]
  def change
    rename_column(:tasks, :completed, :complete_by)
  end
end
