class RemoveExerciseIdFromBodyareaRemoveInstructionsFronExerciseAndAddInstructionsToTypesofexercise < ActiveRecord::Migration
  def change
    remove_column :bodyareas, :exercise_id
    remove_column :exercises, :instructions
    add_column :typesofexercises, :instructions, :text 
  end
end
