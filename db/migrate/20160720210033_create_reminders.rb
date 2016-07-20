class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
