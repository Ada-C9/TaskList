class ChangeCompleteDataType < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :complete_date, :date
  end
end
