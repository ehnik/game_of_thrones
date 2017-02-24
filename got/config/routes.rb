Rails.application.routes.draw do
  resources :houses do
    resources :characters, except: [:index]
  end
  get '/characters', to: 'characters#index'
  delete '/houses/:house_id/characters/:id/delete', to: 'characters#destroy_char'
  get '/houses/:house_id/characters/:id/edit_char', to: 'characters#edit_char'
  patch '/houses/:house_id/characters/:id/edit_char', to: 'characters#update_char'
  put '/houses/:house_id/characters/:id/edit_char', to: 'characters#update_char'
  get '/characters/new', to: 'characters#new'
  post '/characters/new', to: 'characters#create'


end
