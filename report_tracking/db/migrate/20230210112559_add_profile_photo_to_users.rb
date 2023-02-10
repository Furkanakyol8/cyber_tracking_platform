class AddProfilePhotoToUsers < ActiveRecord::Migration[7.0]
  def change
  end
  def self.up
    add_attachment :customers, :profile_photo
  end

  def self.down
    remove_attachment :customers, :profile_photo
  end
end
