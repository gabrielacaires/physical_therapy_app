class CreateAppointmentsExercises < ActiveRecord::Migration
  def change
    create_table :appointments_exercises do |t|
      t.integer :appointment_id
      t.integer :exercise_id

      t.timestamps null: false
    end
  end
end
