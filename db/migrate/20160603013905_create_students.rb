class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :experience_id
      t.integer :education_id
      t.integer :capstone_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :phone_number
      t.text :short_bio
      t.string :linkedin_url
      t.string :twitter_handle
      t.string :wordpress_url
      t.string :resume_url
      t.string :github_url
      t.string :photo

      t.timestamps null: true
    end
  end
end
