ActionController::Routing::Routes.draw do |map|
  map.namespace(:admin) do |admin|
    admin.resources :callouts, :collection => {:sort => :post}
  end
end
