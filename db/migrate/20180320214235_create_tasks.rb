class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.date :due
      t.string :status

      t.timestamps
    end
  end
end
