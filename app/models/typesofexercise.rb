class Typesofexercise < ActiveRecord::Base
  validates :name, presence: true, uniqueness: {case_sensitive: false}

  has_many :exercises

  belongs_to :bodyarea
end
