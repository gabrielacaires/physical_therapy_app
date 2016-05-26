class AddBodyareaIdAndTypesofexerciseIdToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :bodyarea_id, :integer
    add_column :exercises, :typesofexercise_id, :integer
  end
end
