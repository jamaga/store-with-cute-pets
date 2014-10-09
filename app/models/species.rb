class Species < ActiveRecord::Base
	has_many :pets
	validates_presence_of :name
	validates_uniqueness_of :name
end
