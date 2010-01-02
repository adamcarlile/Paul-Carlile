CmsEngine.override_page_type :homepage

class Homepage < Page

  def render(params)
    { :banners => Banner.all,
      :posts => Page.find(:all, :conditions => 'type = "NewsItem"', :order => 'publish_from ASC', :limit => 3) }
  end

end