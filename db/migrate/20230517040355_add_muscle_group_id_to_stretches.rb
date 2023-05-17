class AddMuscleGroupIdToStretches < ActiveRecord::Migration[6.1]
  def change
    add_column :stretches, :muscle_group_id, :integer
  end
end
