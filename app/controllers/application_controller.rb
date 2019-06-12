class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    class Forbidden < ActionController::ActionControllerError; end
    
    # forbidden
    rescue_from Forbidden, with: :rescue403
    
    def rescue403(e)
      @exception = e
      render 'errors/forbidden', status: 403
    end
end
