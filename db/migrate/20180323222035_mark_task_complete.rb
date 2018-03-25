class MarkTaskComplete < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :status, :datetime
  end
end
