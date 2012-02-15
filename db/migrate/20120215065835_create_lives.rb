class CreateLives < ActiveRecord::Migration
  def change
    create_table :lives do |t|
      t.string :www
      t.string  :ip
      t.integer    :access
      t.timestamps
    end
  end
end
