class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :type
      t.integer :n_of_sets
      t.integer :n_of_repetitions
      t.integer :duration_of_repetition
      t.text :instructions

      t.timestamps null: false
    end
  end
end
