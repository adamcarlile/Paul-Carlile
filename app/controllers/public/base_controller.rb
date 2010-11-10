require_dependency File.join('vendor/plugins/cms-engine/app/controllers/public/base_controller')
class Public::BaseController < CMSController
  
  before_filter :cache_twitter_status
  
  def cache_twitter_status
    @twitter = Rails.cache.fetch('twitter', :expires_in => 600) {get_twitter_status}
  end
  
  #
  # Get Twitter Status, but this method isn't run directly, we'll be using the previous method to cache this
  #

  def get_twitter_status
    logger.info 'Getting twitter'
    begin
      c = Grackle::Client.new
      twitter = c.statuses.user_timeline?(:screen_name => 'paulcarlile', :count => 2)
    rescue Grackle::TwitterError
      twitter = Grackle::TwitterError
    end
  end
  
end
