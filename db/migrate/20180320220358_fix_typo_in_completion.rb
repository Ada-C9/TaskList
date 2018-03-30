class FixTypoInCompletion < ActiveRecord::Migration[5.1]
  def change
    rename_column(:tasks, :completeion_date, :completion_date)
  end
end
