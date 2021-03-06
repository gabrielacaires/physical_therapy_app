class Exercise < ActiveRecord::Base
  has_many :appointments_exercises
  has_many :appointments, through: :appointments_exercises

  scope :back, -> { where( bodyarea_id: 1 ) }
  scope :knee, -> { where( bodyarea_id: 4 ) }
  scope :wrist, -> { where( bodyarea_id: 5 ) }
  scope :neck, -> { where( bodyarea_id: 6) }

  belongs_to :bodyarea

  belongs_to :typesofexercise

  validates :typesofexercise_id, presence: true
  validates :bodyarea_id, presence: true

  def exercise_name
    name = Typesofexercise.find_by_id(self.typesofexercise_id).name
    "#{name}: #{self.n_of_sets} sets of #{self.n_of_repetitions} repetitions, each rep #{self.duration_of_repetition} seconds" 
  end
end
