class AddMarkCompleteColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :mark_complete, :boolean
  end
end
