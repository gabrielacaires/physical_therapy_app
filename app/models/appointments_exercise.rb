class AppointmentsExercise < ActiveRecord::Base
  belongs_to :appointment
  belongs_to :exercise
end
