class RemoveAppointmentIdFromExercises < ActiveRecord::Migration
  def change
    remove_column :exercises, :appointment_id
  end
end
