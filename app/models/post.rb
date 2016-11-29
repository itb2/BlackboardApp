class Post < ApplicationRecord
  belongs_to :user
  belongs_to :group
  belongs_to :event

  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  
  validates_presence_of :body

end
