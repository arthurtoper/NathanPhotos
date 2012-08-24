class PhotographsController < ApplicationController
	def new
		@gallery = Gallery.find params[:gallery_id]
		@photo = Photograph.new
	end

	def create
		@gallery = Gallery.find params[:gallery_id]
		@photo = Photograph.new params[:photograph]
		@photo.gallery = @gallery
		if @photo.save
			redirect_to @gallery
		else
			render :new
		end
	end

	def edit
		@gallery = Gallery.find params[:gallery_id]
		@photo = @gallery.photographs.find params[:id]
	end

	def update
		@gallery = Gallery.find params[:gallery_id]
		@photo = Photograph.find params[:id]
		if @photo.update_attributes(params[:photograph])
			redirect_to @gallery
		else
			render :edit
		end
	end

	def destroy
		@gallery = Gallery.find params[:gallery_id]
		@photo = Photograph.find params[:id]
		@photo.destroy
		redirect_to @gallery
	end
end