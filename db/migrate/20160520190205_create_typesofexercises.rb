class CreateTypesofexercises < ActiveRecord::Migration
  def change
    create_table :typesofexercises do |t|
      t.string :name
      
      t.timestamps null: false
    end
  end
end
