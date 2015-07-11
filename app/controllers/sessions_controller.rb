class SessionsController < Devise::SessionsController
  def new
  	respond_to do |format|
        format.html {
          clean_up_passwords resource
          respond_with resource
        }
        format.js {
          flash.discard	
          flash.now[:error]
          render :template => "remote_content/devise_errors.js.erb"
          flash.discard
        }
    end
  end
end  
