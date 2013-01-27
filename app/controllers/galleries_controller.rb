class GalleriesController < ApplicationController

	skip_before_filter :redirect_unless_admin, :only => [:index, :show]

	def index
		# redirect_to Gallery.first if Gallery.any?
	end

	def new
		@gallery = Gallery.new
	end

	def create
		@gallery = Gallery.new params[:gallery]
		if @gallery.save
			redirect_to root_url
		else
			render :new
		end
	end

	def edit
		@gallery = Gallery.find params[:id]
	end

	def update
		@gallery = Gallery.find params[:id]
		if @gallery.update_attributes(params[:gallery])
			redirect_to root_url
		else
			render :edit
		end
	end

	def destroy
		@gallery = Gallery.find params[:id]
		@gallery.destroy
		redirect_to root_url
	end

	def show
		@galleries = Gallery.all
		@gallery = Gallery.find params[:id]
		redirect_to [@gallery, @gallery.photographs.first] if @gallery.photographs.any?
	end
end