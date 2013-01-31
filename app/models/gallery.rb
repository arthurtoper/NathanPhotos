class Gallery < ActiveRecord::Base
	attr_accessible :description, :name, :photographs_attributes

	validates :name, presence: true

	has_many :photographs, dependent: :destroy

	accepts_nested_attributes_for :photographs, allow_destroy: true


	def image
		photographs.last if photographs.any? && photographs.last.image?
	end

	def build_photographs
		if photographs.length < 12
			(12 - photographs.length).times { photographs.build }
		else
	  		photographs.build
	  	end  
	end
end