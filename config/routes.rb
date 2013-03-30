Askalot::Engine.routes.draw do
  get "questionnaires/run"

  resources :questionnaires do
    get :run, on: :member
  end
end
