class ChangeColumnType < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :start_date, :string
  end
end
