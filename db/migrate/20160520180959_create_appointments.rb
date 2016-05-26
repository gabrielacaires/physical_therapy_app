class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :app_date
      t.string :duration
      t.text :comments

      t.timestamps null: false
    end
  end
end
