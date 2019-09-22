Rails.application.routes.draw do
  root 'songs#index'
  resources :songs
  get 'about', to: 'songs#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
