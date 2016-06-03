class Appointment < ActiveRecord::Base
  has_many :appointments_exercises
  has_many :exercises, through: :appointments_exercises

  validates :app_date, presence: true

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
