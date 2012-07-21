class PhotographsController < ApplicationController
	def index
		@photos = Photograph.all
	end

	def new
		@photo = Photograph.new
	end

	def create
		@photo = Photograph.new params[:photograph]
		if @photo.save
			redirect_to photographs_url
		else
			render :new
		end
	end

	def edit
		@photo = Photograph.find params[:id]
	end

	def update
		@photo = Photograph.find params[:id]
		if @photo.update_attributes(params[:photograph])
			redirect_to photographs_url
		else
			render :edit
		end
	end

	def destroy
		@photo = Photograph.find params[:id]
		@photo.destroy
		redirect_to photographs_url
	end
end