class AddMuscleGroupIdToExercises < ActiveRecord::Migration[6.1]
  def change
    add_column :exercises, :muscle_group_id, :integer
  end
end
