class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :details
      t.string :completed_date

      t.timestamps
    end
  end
end
