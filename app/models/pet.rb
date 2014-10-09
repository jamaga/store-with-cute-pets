class Pet < ActiveRecord::Base
	#validates_presence_of :name, PetPhotoUploader
	validates_uniqueness_of :name
	mount_uploader :photo, PetPhotoUploader
end
