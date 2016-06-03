class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :attribute1
      t.string :attribute2

      t.timestamps null: false
    end
  end
end
