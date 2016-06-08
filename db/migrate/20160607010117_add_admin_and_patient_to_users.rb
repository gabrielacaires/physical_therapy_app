class AddAdminAndPatientToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :patient, :boolean, default: true
  end
end
