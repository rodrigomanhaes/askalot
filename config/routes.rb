Askalot::Engine.routes.draw do
  resources :questionnaires, except: :all do
    resources :answers, only: [:new, :create, :show]
  end
end
