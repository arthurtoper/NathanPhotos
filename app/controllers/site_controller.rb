class SiteController < ApplicationController
	
	skip_before_filter :redirect_unless_admin

	def index
	end

	def about
	end

	def contact
	end

	def weddings
	end

	def packages
	end
end