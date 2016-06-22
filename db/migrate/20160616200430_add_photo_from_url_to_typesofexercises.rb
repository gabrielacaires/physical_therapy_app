class AddPhotoFromUrlToTypesofexercises < ActiveRecord::Migration
  def change
    add_column :typesofexercises, :photo_from_url, :string
  end
end
