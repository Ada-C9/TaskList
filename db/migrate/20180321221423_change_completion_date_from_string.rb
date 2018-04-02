class ChangeCompletionDateFromString < ActiveRecord::Migration[5.1]
  def change
    # source material I'm trying to match:
    # change_column(table_name, column_name, new_data_type):
    # add_column :books, :description, :string
    remove_column :tasks, :completion_date

    add_column :tasks, :completion_date, :datetime
  end
end
