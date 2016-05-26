class Bodyarea < ActiveRecord::Base
  has_many :exercises

  has_many :typesofexercises

  validates :name, presence: true, uniqueness: {case_sensitive: false}
end
