class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :users_appointments
  has_many :appointments, through: :users_appointments

  scope :patient, -> { where( patient: true ) }
  scope :doctor, -> { where( patient: false, admin: false ) }

  def types
    name = ["Patient","Doctor"]
  end

  def is_patient?
    if self.type == "Patient"
      return true
    end    
  end

  def is_doctor?
    if self.type == "Doctor"
      return true
    end    
  end  

  def is_admin?
    if self.type == "Admin"
      return true
    end    
  end
end
