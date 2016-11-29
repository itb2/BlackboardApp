class Group < ApplicationRecord
	
	has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }

	has_many :posts
	has_many :events
	has_many :users
	has_many :articles
end
