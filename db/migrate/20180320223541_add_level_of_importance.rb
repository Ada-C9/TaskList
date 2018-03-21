class AddLevelOfImportance < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :importance, :integer
  end
end
