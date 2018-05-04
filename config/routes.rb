Rails.application.routes.draw do
  # get '/topics', to: 'topics#index'
  # get 'topics/show', to: 'topics#show'
  # get 'topics/new', to: 'topics#new'
  get 'topics/edit', to: 'topics#edit'
  post '/topics',  to: 'topics#create'
  
  resources :topics
end
