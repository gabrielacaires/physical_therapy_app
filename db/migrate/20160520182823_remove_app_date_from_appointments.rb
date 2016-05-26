class RemoveAppDateFromAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :app_date
    add_column :appointments, :app_date, :datetime
  end
end
