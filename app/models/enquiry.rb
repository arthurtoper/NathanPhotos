class Enquiry < ActiveRecord::Base

  attr_accessible :email_address, :message, :phone_number

  validates :email_address, :message, presence: true

  validates_format_of :email_address, with: /^[\w.-]+@[\w-]+\.[\w.-]+$/i, unless: Proc.new { |enquiry| enquiry.email_address == '' }, on: :create

end