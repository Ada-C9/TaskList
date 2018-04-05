class ChangeDataTypeForCompletionDate < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :completion_date, :datetime
    change_column :tasks, :target_date, :date
  end
end
