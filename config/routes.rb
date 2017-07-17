Rails.application.routes.draw do
  resources :primeminesters
  get 'pm/list'

  get 'pm/idiot'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
