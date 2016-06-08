class Typesofexercise < ActiveRecord::Base
  validates :name, presence: true, uniqueness: {case_sensitive: false}

  scope :back, -> { where( bodyarea_id: 1 ) }
  scope :knee, -> { where( bodyarea_id: 4 ) }
  scope :wrist, -> { where( bodyarea_id: 5 ) }
  scope :neck, -> { where( bodyarea_id: 6) }

  has_many :exercises

  belongs_to :bodyarea

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
