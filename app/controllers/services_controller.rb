class ServicesController < ApplicationController
	def index
		@services = Service.all
	end

	def new
		@service = Service.new
	end

	def create
		@service = Service.new params[:service]
		if @service.save
			redirect_to services_url
		else
			render :new
		end
	end

	def show
		@service = Service.find params[:id]
	end

	def edit
		@service = Service.find params[:id]
	end

	def update
		@service = Service.find params[:id]
		if @service.update_attributes(params[:service])
			redirect_to services_url
		else
			render :edit
		end
	end

	def destroy
		@service = Service.find params[:id]
		@service.destroy
		redirect_to services_url
	end
end