class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :string
      t.string :description
      t.string :string
      t.string :completeion_date
      t.string :string

      t.timestamps
    end
  end
end
