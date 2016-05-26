class CreateBodyareas < ActiveRecord::Migration
  def change
    create_table :bodyareas do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
