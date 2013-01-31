class EnquiriesController < ApplicationController

	def new
		@enquiry = Enquiry.new
	end

	def create
		@enquiry = Enquiry.new(params[:enquiry])

		if @enquiry.save
			EnquiryMailer.enquiry(@enquiry).deliver
			redirect_to contact_path, flash: {info: "Thanks! I'll be in touch soon."}
		else
			render :new
		end
	end
end