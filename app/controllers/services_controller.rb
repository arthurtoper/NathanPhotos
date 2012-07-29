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
end