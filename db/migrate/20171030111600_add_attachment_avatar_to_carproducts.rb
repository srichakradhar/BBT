class AddAttachmentAvatarToCarproducts < ActiveRecord::Migration[5.1]
  def self.up
    change_table :carproducts do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :carproducts, :avatar
  end
end
