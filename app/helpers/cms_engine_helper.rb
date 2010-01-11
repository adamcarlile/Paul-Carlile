require File.join('vendor/plugins/cms-engine/app/helpers/cms_engine_helper')
module CmsEngineHelper
  def render_flash
    flash.to_a.map { |v| content_tag("div", content_tag("span", v[1]), "id" => v[0], "class" => "flash") }
  end
end
  