class RemoveIdColumnsFromStudent < ActiveRecord::Migration
  def change
    remove_column :students, :education_id, :integer
    remove_column :students, :experience_id, :integer
    remove_column :students, :capstone_id, :integer
  end
end
