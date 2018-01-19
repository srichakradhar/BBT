class Carproduct < ApplicationRecord
  belongs_to :carcategory
  has_attached_file :avatar, styles: { medium: "30x30>", thumb: "100x100>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
