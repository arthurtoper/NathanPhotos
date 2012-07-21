class Gallery < ActiveRecord::Base
	attr_accessible :description, :name

	validates :name, presence: true

	has_many :photographs, dependent: :destroy

	def image
		photographs.last if photographs.any? && photographs.last.image?
	end
end