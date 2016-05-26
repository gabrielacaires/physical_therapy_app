class RemoveNameAndTypeFromExercises < ActiveRecord::Migration
  def change
    remove_column :exercises, :name
    remove_column :exercises, :type
  end
end
