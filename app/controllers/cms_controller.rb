require File.join('vendor/plugins/cms-engine/app/controllers/cms_controller')
class CMSController < ActionController::Base
  helper :all
    
  #Check to make sure we are in production mode
  unless ActionController::Base.consider_all_requests_local
    #Ensure that any extra functionality we have built in is caught by the 404, making sure the user never sees an ugly 404
    rescue_from ActiveRecord::RecordNotFound, ActionController::RoutingError, ActionController::UnknownController, ActionController::UnknownAction, :with => :render_not_found
    rescue_from RuntimeError, Exception, :with => :render_internal_error
  end
  
  def render_not_found
    render :template => 'public/404', :status => :not_found
  end
  
  def render_internal_error
    render :template => 'public/500', :status => :internal_server_error
  end
  
  def footer_news
    @footernews = NewsItem.latest(4)
  end
  
end