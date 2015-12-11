Rails.application.routes.draw do

  resources :topics do
    resources :posts, except: [:index]
    resources :sponsored_posts
    # get '/topics/:topic_id/sponsored_posts', => 'sponsored_posts#index'
    # get '/topics/:topic_id/sponsored_posts/:id', => 'sponsored_posts#show'
  end
  # get '/topics', => 'topics#index'
  # get '/topics/:id', => 'topics#show'

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
