class CreatePagetexts < ActiveRecord::Migration
  def change
    create_table :pagetexts do |t|
      t.string :text
      t.timestamps
    end
  end
end
