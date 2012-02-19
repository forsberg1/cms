class CreatePsettings < ActiveRecord::Migration
  def change
    create_table :psettings do |t|
      t.integer  :pageid
      t.integer	 :public
      t.integer  :editable
      t.timestamps
    end
  end
end
