class AddAttachmentPhotoToTypesofexercises < ActiveRecord::Migration
  def self.up
    change_table :typesofexercises do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :typesofexercises, :photo
  end
end
