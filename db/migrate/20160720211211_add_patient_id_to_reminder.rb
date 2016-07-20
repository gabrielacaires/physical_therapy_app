class AddPatientIdToReminder < ActiveRecord::Migration
  def change
    add_column :reminders, :patient_id, :integer 
  end
end
