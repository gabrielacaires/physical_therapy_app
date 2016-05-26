class Appointment < ActiveRecord::Base
  has_many :appointments_exercises
  has_many :exercises, through: :appointments_exercises

  validates :app_date, presence: true
end
