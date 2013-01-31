module ApplicationHelper

  	def info
		flash[:info]
	end
	
	def warning
		flash[:warning]
	end
	
	def error
		flash[:error]
	end
	
	def validation_errors_for(model)
		render 'layouts/validation_errors', model: model
	end

end
