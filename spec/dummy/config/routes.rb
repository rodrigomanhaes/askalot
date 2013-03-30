Dummy::Application.routes.draw do
  root to: 'home#index'
  mount Askalot::Engine => "/askalot"
end
