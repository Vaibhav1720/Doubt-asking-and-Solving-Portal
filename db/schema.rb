
ActiveRecord::Schema.define(version: 2021_01_11_173259) do

  create_table "doubts", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
