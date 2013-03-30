Dummy::Application.routes.draw do
  mount Askalot::Engine => "/askalot"
  root to: 'home#index'
end
