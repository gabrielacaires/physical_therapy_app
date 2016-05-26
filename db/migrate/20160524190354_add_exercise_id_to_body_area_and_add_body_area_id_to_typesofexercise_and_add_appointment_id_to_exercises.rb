class AddExerciseIdToBodyAreaAndAddBodyAreaIdToTypesofexerciseAndAddAppointmentIdToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :appointment_id, :integer
    add_column :bodyareas, :exercise_id, :integer
    add_column :typesofexercises, :bodyarea_id, :integer
  end
end
