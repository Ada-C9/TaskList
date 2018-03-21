class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :description
      t.string :priority
      t.date :start_date
      t.date :due_date
      t.string :status

      t.timestamps
    end
  end
end
