require File.join('vendor/plugins/cms-engine/app/helpers/navigation_helper')
module NavigationHelper
  def render_breadcrumb
    return '' if breadcrumbs.empty?
    breadcrumbs.reject{|b| b = 'Global Nav'}
    elements = breadcrumbs.map do |crumb|
      if crumb.second
        link_to(crumb.first, crumb.second)
      else
        crumb.first
      end
    end
	  content_tag('div', elements.join(' &raquo; '), :id => 'breadcrumb')
  end
end