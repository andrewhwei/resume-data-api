class CreateSkilledStudents < ActiveRecord::Migration
  def change
    create_table :skilled_students do |t|
      t.integer :student_id
      t.integer :skill_id

      t.timestamps null: true
    end
  end
end
