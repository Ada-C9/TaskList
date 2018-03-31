class Wave4 < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :completion_date
  end
end
