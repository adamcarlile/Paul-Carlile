CmsEngine.override_page_type :homepage

class Homepage < Page

  def render(params)
    { :banners => Banner.all }
  end

end