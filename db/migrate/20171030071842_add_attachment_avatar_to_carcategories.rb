class AddAttachmentAvatarToCarcategories < ActiveRecord::Migration[5.1]
  def self.up
    change_table :carcategories do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :carcategories, :avatar
  end
end
