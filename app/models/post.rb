class Post < ApplicationRecord
	mount_uploader :image, ImageUploader
	has_many :comments
	validates :title, presence: true,
	length: {minimum: 5}
	
end
