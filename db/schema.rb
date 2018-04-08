ActiveRecord::Schema.define(version: 20180321081345) do

  enable_extension "plpgsql"

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.boolean "complete"
    t.string "description"
    t.string "owner"
    t.date "date_complete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
