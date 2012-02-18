class CreatePages < ActiveRecord::Migration
  def change
   create_table "pages", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
   end
  end
end
