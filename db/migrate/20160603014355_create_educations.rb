class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.integer :student_id
      t.string :start_date
      t.string :end_date
      t.string :degree
      t.string :university_name
      t.text :details

      t.timestamps null: true
    end
  end
end
