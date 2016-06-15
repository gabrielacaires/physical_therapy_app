class Appointment < ActiveRecord::Base
  has_many :appointments_exercises
  has_many :exercises, through: :appointments_exercises
  has_many :users_appointments
  has_many :users, through: :users_appointments

  validates :app_date, presence: true

  accepts_nested_attributes_for :exercises

  def start_time
    self.app_date
  end

  def name   
    string = ""

    if self.exercises.any?
      self.exercises.each do |exercise|
        if string.empty?
          string = exercise.typesofexercise.name
        else
          string = string + " + " + exercise.typesofexercise.name
        end
      end
    end

    name = string
  end
end
