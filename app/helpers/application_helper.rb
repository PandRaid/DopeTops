module ApplicationHelper
	def resource_name
	:user
	end

	def resource
	@resource ||= User.new
	end

	def devise_mapping
	@devise_mapping ||= Devise.mappings[:user]
	end

	 def flash_normal
	    render "flashes"
	  end

	  def flash_form
	    render "form_flashes"
	  end

	  def twitterized_type(type)
	    case type
	      when :errors
	        "alert-danger"
	      when :alert
	        "alert-warning"
	      when :error
	        "alert-danger"
	      when :notice
	        "alert-success"
	      else
	        "alert-danger"
	    end
	  end
end
