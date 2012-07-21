class PhotographsController < ApplicationController
	def index
		@photos = Photograph.all
	end


end