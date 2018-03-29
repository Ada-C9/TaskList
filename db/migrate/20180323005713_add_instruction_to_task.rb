class AddInstructionToTask < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :instructions, :string
  end
end
