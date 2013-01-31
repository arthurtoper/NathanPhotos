class EnquiryMailer < ActionMailer::Base
	def enquiry(enquiry)
		@enquiry = enquiry
		mail(:to => $nathan_enquiry_address, :from => @enquiry.email_address, :subject => 'Contact from website')
	end
end