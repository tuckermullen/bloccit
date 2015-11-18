Rails.application.routes.draw do

  resources :posts
  # get '/posts' => 'posts#index'
  # get '/posts/new => 'posts#new'
  # post '/posts' => 'posts#create'
  # get '/posts/:id' => 'posts#show'
  # get '/posts/:id/edit' => 'posts#edit'
  # put '/posts/:id/' => 'posts#update'
  # delete '/posts/:id/' => 'posts#destroy'


  resources :advertisements
  # get '/advertisements' => 'advertisements#index'
  # get '/advertisements/new => 'advertisements#new'
  # post '/advertisements' => 'advertisements#create'
  # get '/advertisements/:id' => 'advertisements#show'
  # get '/advertisements/:id/edit' => 'advertisements#edit'
  # put '/advertisements/:id/' => 'advertisements#update'
  # delete '/advertisements/:id/' => 'advertisements#destroy'


  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
